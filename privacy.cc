#include "conf.hh"

#include "dataset.hh"
#include "random.hh" // access to the unique global randomness generator for reproducibility.
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/statistics/sum.hpp>
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/range/algorithm_ext/for_each.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <unordered_map>
#include <functional>
#include <algorithm>
#include <iterator>
#include <utility> // for std::pair
#include <cassert>
#include <vector>
#include <iostream>
#include <iomanip>

namespace ba = boost::accumulators;

std::unordered_map<user_id_t, std::unordered_map<item_id_t, rational>>  privacy_weights; // user's privacy preference of all items

struct pair_uids_hash {
	std::size_t operator()(std::pair<user_id_t, user_id_t> p) const {
		return std::hash<user_id_t>()(p.first) ^ std::hash<user_id_t>()(p.second);
	}
};

// this global var caches the perturbed similarity values. to change the noise, application must be re-run.
std::unordered_map<std::pair<user_id_t, user_id_t>, rational, pair_uids_hash> similarities;

template <typename Distribution>
void generate_weights(user_id_t id, Distribution pc) {
	assert(privacy_weights[id].empty());
	// TODO: try to use generate_n since it is parallelizable using std::parallel gnu extension
	assert(id < dataset.value().size());
	for(item_id_t const & item : dataset.value()[id])
			privacy_weights[id][item] = rational{1}; //pc(rng); XXX for debugging: no privacy groups TODO we need rational-from-double here
}

enum class privacy_class : uint8_t { CONCERNED = 0, NORMAL = 1, UNCONCERNED = 2 };
privacy_class random_privacy_class () {
	switch (std::uniform_int_distribution<uint8_t>{0,2}(rng)) {
	case 0: return privacy_class::CONCERNED;
	case 1: return privacy_class::NORMAL;
	case 2: return privacy_class::UNCONCERNED;
	default : assert(false);
	}
	assert(false);
}

std::pair<rational, rational> pc_limits(privacy_class pc) {
	switch(pc) {
	case privacy_class::CONCERNED:      return std::make_pair(rational{0}, rational{1});
	case privacy_class::NORMAL:         return std::make_pair(rational{1,2}, rational{1});
	case privacy_class::UNCONCERNED:    return std::make_pair(rational{9,10}, rational{1});
	default: assert(false);
	}
	assert(false);
}

std::vector<rational> weights_of(user_id_t id, std::vector<item_id_t> const & subset) {
	if(!privacy_weights.count(id)) {
		rational min, max;
		std::tie(min, max) = pc_limits(random_privacy_class());
		assert(0 <= min && min <= 1);
		assert(0 <= max && max <= 1);
		generate_weights(id, std::uniform_real_distribution<float>{boost::rational_cast<float>(min), boost::rational_cast<float>(max)});
	}

	// return only the weigts for items in the `subset'
	//
	// set<item_id_t> (sorted): 3   76  195 344
	// subset                 : 3   -   195 -
	// privacy_weights(vector): 0.5 1.0 0.3 0.24
	// return value           : 0.5     0.3 (in that order)
	// for every subset item, find index in set, append privacy_weight at that index// a map would be better
	std::vector<rational> v;
	for(auto const &subset_item : subset)
		v.push_back(privacy_weights[id][subset_item]);

	return v;
}

rational cached_similarity(user_id_t a, user_id_t b) {
	// make sure that the pair<2,3> and pair<3,2> are the same by always putting the /larger/ id last
	if(a > b)
		return cached_similarity(b, a);

	auto id = std::make_pair(a,b);

	// if(similarities.count(id))
	//	return similarities[id];

	std::vector<item_id_t> intersection;
	assert(a < dataset.value().size());
	assert(b < dataset.value().size());
	boost::set_intersection(dataset.value()[a], dataset.value()[b], std::back_inserter<>(intersection));

	ba::accumulator_set<rational, ba::features<ba::tag::sum>> acc;

	boost::range::for_each(weights_of(a, intersection),
	                       weights_of(b, intersection),
	                       std::bind(std::ref(acc),
	                                 std::bind(std::multiplies<rational>(),
	                                           std::placeholders::_1,
	                                           std::placeholders::_2)));
	// divide squared inner product by size1 * size2 to get cosine similarity
	rational inner_prod{ba::sum(acc)};
	inner_prod *= inner_prod;
	rational denominator{dataset.value()[a].size() * dataset.value()[b].size()};
	if(similarities.count(id)) // sanity check
			assert(	similarities[id] == inner_prod / denominator);

	similarities[id] = inner_prod / denominator;
	//std::cout << "squared cossim "
	//					<< std::setfill('0') << std::setw(3) << a << "-"
	//					<< std::setfill('0') << std::setw(3) << b << " = "
	//					<< similarities[id] << std::endl;
	return similarities[id];
}

rational similarity(user_id_t a,
                 user_id_t b) {
	if(!dataset)
		dataset = some(load_dataset("delicious.txt"));
	assert(a < dataset.value().size());
	assert(b < dataset.value().size());
	return cached_similarity(a, b);
}
