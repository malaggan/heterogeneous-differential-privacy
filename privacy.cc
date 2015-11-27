#include "args.hh"
#include "abstract_user.hh"
#include "laplace.hh"

// TODO these file lines to be moved to .cc
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

void user::
generate_weights(std::uniform_real_distribution<double> pc, size_t slices) {
	assert(privacy_weights.empty());
	// TODO: try to use generate_n since it is parallelizable using std::parallel gnu extension
	for(item_id_t const & item : training_items) // only training_items need weight
		privacy_weights[item] = static_cast<uint64_t>(std::ceil(pc(rng)* slices)) / static_cast<double>(slices);
}

std::pair<double, double> user::
pc_limits(privacy_class pc) {
	switch(pc) {
	case privacy_class::CONCERNED:					 return std::make_pair(0, 1);
	case privacy_class::NORMAL:							 return std::make_pair(0.5, 1);
	case privacy_class::NORMAL_HOMOGENEOUS:  return std::make_pair(0.5, 0.5);
	case privacy_class::UNCONCERNED:				 return std::make_pair(0.9, 1);
	case privacy_class::NONE:				         return std::make_pair(1, 1);
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
		double min, max;
		//--- thsese two lines set apart the difference between HDP groups and no-groups

		// must have exactly one of the three
		assert(vm["naive" ].as<bool>() or
		       vm["groups"].as<bool>() or
		       vm.count("slices"));

		// not implemented yet
		assert(!vm["naive"].as<bool>());

		if(vm["groups"].as<bool>()) {
			assert(!vm["naive"].as<bool>()); // mutually exclusive
			assert(!vm.count("slices")); // mutually exclusive
			// XXX COMPLETE HERE

		} else {
			assert( vm.count("slices")); // must be true by previous assertions
			assert(!vm["naive" ].as<bool>()); // mutually exclusive
			assert(!vm["groups"].as<bool>()); // mutually exclusive
			// XXX COMPLETE HERE

		}

		auto slices = 1000u; // TODO read from options
		std::tie(min, max) = pc_limits(prv_cls);
		//---
		assert(0 <= min && min <= 1);
		assert(0 <= max && max <= 1);
		generate_weights(
			std::uniform_real_distribution<double>{min, max},
			slices);
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
	// divide squared inner product by size1 * size2 to get cosine similarity
	inner_prod *= inner_prod;

	//std::cout << "squared cossim "
	//					<< std::setfill('0') << std::setw(3) << a << "-"
	//					<< std::setfill('0') << std::setw(3) << b << " = "
	//					<< similarities[id] << std::endl;
	similarities[other] = inner_prod / training_items.size() * all_peers[other]->training_items.size();
	if(vm["private"].as<bool>())
		similarities[other] += laplace_mechanism(similarities[other]);
	return similarities[other];
}
