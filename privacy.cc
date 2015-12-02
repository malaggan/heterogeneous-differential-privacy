#include "args.hh"
#include "abstract_user.hh"
#include "laplace.hh"

#include <boost/accumulators/statistics/sum.hpp>
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/range/algorithm/for_each.hpp> // one input
#include <boost/range/algorithm_ext/for_each.hpp> // two inputs
#include <boost/accumulators/accumulators.hpp>
namespace ba = boost::accumulators;

void user::
add_item(item_id_t i) {
	extern std::unordered_set<item_id_t> used_more_than_once;

	items.insert(i);

	if(used_more_than_once.count(i) and std::bernoulli_distribution{0.1}(rng))
		test_items.insert(i);
	else
		training_items.insert(i);

}
//#include "log.hh"
void user::
generate_weights(double min, double max, uint32_t slices) {
	assert(privacy_weights.empty());
	std::uniform_int_distribution<uint8_t> uniform{0,2};
	auto choice = uniform(rng);
	// TODO: try to use generate_n since it is parallelizable using std::parallel gnu extension
	for(item_id_t const & item : training_items) { // only training_items need weight
		switch(prv_cls) {
		case privacy_class::BLIND:
			privacy_weights[item] = 0.0;
			break;
		case privacy_class::UNCONCERNED:
			privacy_weights[item] = 1.0;
			break;
		case privacy_class::CONCERNED:
			privacy_weights[item] = static_cast<double>(choice) / 2.0;
			break;
		case privacy_class::NORMAL:
			switch(choice) {
			case 0:
				privacy_weights[item] = 0.5;
				break;
			case 1:
				privacy_weights[item] = 0.75;
				break;
			case 2:
				privacy_weights[item] = 1.0;
				break;
			default : assert(false);
			}
			break;
		case privacy_class::NAIVE:
			privacy_weights[item] = 0.5;
			break;
		case privacy_class::SLICES: {
			assert(slices > 1); // in the old code base, flip a coin and choose min or max according to it. FIXME
			double delta{(max - min)/(slices - 1)};
			std::uniform_int_distribution<uint32_t> deltas{0u, slices - 1};
			privacy_weights[item] = min + deltas(rng) * delta;
			//static logger l{"ff"};
			// l.log("slices = %d, min = %f, max = %f, weight = %f",slices,min,max,privacy_weights[item]);
			// std::uniform_real_distribution<double> pc{min, max};
			// l.log("slices = %d, min = %f, max = %f, weight (old) = %f, weight (new) = %f",slices,min,max,static_cast<uint64_t>(std::ceil(pc(rng)* slices)) / static_cast<double>(slices), privacy_weights[item]);
			break;
		}
		default: assert(false);
		}
	}
}

std::pair<double, double> user::
pc_limits(privacy_class pc) {
	switch(pc) {
	case privacy_class::BLIND:               return std::make_pair(0.0, 0.0); // FIXME exactly 0
	case privacy_class::CONCERNED:					 return std::make_pair(0.0, 1.0); // FIXME 0,   0.5 , or 1
	case privacy_class::NORMAL:							 return std::make_pair(0.5, 1.0); // FIXME 0.5, 0.75, or 1
	case privacy_class::NAIVE:               return std::make_pair(0.5, 0.5); // FIXME exactly 0.5
	case privacy_class::UNCONCERNED:				 return std::make_pair(1.0, 1.0); // FIXME exactly 1
	case privacy_class::SLICES: {
		assert(vm.count("min"));
		auto min = vm["min"].as<double>();
		assert(0.0 <= min && min <= 1.0);			 return std::make_pair(min, 1.0);
	}
	case privacy_class::BASELINE:            assert(false);  // if not private, there is no point calling this.
	default: assert(false);
	}
	assert(false);
}

std::vector<double> user::
weights_of(std::vector<item_id_t> const & subset) {
	if(!vm["private"].as<bool>())
		// do not generate any weights if privacy is not enabled
		return std::vector<double>{};

	if(privacy_weights.empty()) { // if not cached, need to generate
		// naive, groups, or slices, are handled in dataset.cc and prv_cls.
		uint32_t slices = 1;
		if(vm.count("slices"))
			slices = vm["slices"].as<uint32_t>();

		double min, max;
		std::tie(min, max) = pc_limits(prv_cls);
		assert(0.0 <= min && min <= 1.0);
		assert(0.0 <= max && max <= 1.0);
		generate_weights(min, max, slices);
	}

	// return only the weigts for items in the `subset'
	//
	// set<item_id_t> (sorted): 3   76  195 344
	// subset                 : 3   -   195 -
	// privacy_weights(vector): 0.5 1.0 0.3 0.24
	// return value           : 0.5     0.3 (in that order)
	// for every subset item, find index in set, append privacy_weight at that index// a map would be better
	std::vector<double> v;
	for(auto const &subset_item : subset)
		v.push_back(privacy_weights[subset_item]);
	return v;
}

double user::
cached_similarity(user_id_t other) {
	// make sure that the pair<2,3> and pair<3,2> are the same by always putting the /larger/ id last
	if(this->id > other)
		return all_peers[other]->cached_similarity(this->id);

	if(similarities.count(other))
		return similarities[other];

	if(training_items.size() == 0 || all_peers[other]->training_items.size() == 0)
		return similarities[other] = 0; // TODO discard users with empty profile from the very beginning

	std::vector<item_id_t> intersection;
	boost::set_intersection(training_items, all_peers[other]->training_items, std::back_inserter<>(intersection));

	double inner_prod{0.0};

	if(vm["private"].as<bool>()) {
		ba::accumulator_set<double, ba::features<ba::tag::sum>> acc;
		boost::range::for_each(weights_of(intersection),
		                       all_peers[other]->weights_of(intersection),
		                       std::bind(std::ref(acc),
		                                 std::bind(std::multiplies<double>(),
		                                           std::placeholders::_1,
		                                           std::placeholders::_2)));

		inner_prod = ba::sum(acc);
	} else {
		inner_prod = intersection.size();
	}
	if(vm["private"].as<bool>())
		inner_prod += laplace_mechanism(similarities[other]);
	// divide squared inner product by size1 * size2 to get cosine similarity
	inner_prod *= inner_prod;

	//std::cout << "squared cossim "
	//					<< std::setfill('0') << std::setw(3) << a << "-"
	//					<< std::setfill('0') << std::setw(3) << b << " = "
	//					<< similarities[id] << std::endl;
	similarities[other] = inner_prod / training_items.size() / all_peers[other]->training_items.size();
	// if(vm["private"].as<bool>())
	//	similarities[other] += laplace_mechanism(similarities[other]);
	return similarities[other];
}

double similarity(ventry &a, ventry &b) {
	extern all_t all_peers;
	return all_peers[a.id]->cached_similarity(b.id);
}

double similarity(user &a, user &b) {
	return a.cached_similarity(b.id);
}

double similarity(user &a, ventry &b) {
	return a.cached_similarity(b.id);
}

// more_similar_to(this_guy, a, b)
// returns true if a is more similar to reference than b
bool more_similar(user &reference, ventry &a, ventry &b) {
	return similarity(reference, a) > similarity(reference, b);
}

bool less_similar(user &reference, ventry &a, ventry &b) {
	return similarity(reference, a) < similarity(reference, b);
}
