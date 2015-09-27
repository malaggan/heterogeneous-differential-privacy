#include "dataset.hh"
#include "random.hh" // access to the unique global randomness generator for reproducibility.
#include "option.hh"
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/range/algorithm_ext/for_each.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <unordered_map>
#include <functional>
#include <algorithm>
#include <iterator>
#include <utility> // for std::pair
#include <cassert>
#include <vector>
#include <map>

namespace ba = boost::accumulators;

std::unordered_map<user_id_t, std::unordered_map<item_id_t, float>>  privacy_weights; // user's privacy preference of all items
// this global var caches the perturbed similarity values. to change the noise, application must be re-run.
std::map<std::pair<user_id_t, user_id_t>, float> similarities; // TODO: not using unordered_map to avoid defining hash for pair, but it would be faster.

template <typename Distribution>
void generate_weights(user_id_t id, Distribution pc) {
	assert(privacy_weights[id].empty());
	// TODO: try to use generate_n since it is parallelizable using std::parallel gnu extension
	for(item_id_t const & item : dataset.value()[id])
		privacy_weights[id][item] = pc(rng);
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

std::pair<float, float> pc_limits(privacy_class pc) {
	switch(pc) {
	case privacy_class::CONCERNED:      return std::make_pair(0.0f, 1.0f);
	case privacy_class::NORMAL:         return std::make_pair(0.5f, 1.0f);
	case privacy_class::UNCONCERNED:    return std::make_pair(0.9f, 1.0f);
	default: assert(false);
	}
	assert(false);
}

std::vector<float> weights_of(user_id_t id, std::vector<item_id_t> const & subset) {
	if(!privacy_weights.count(id)) {
		float min, max;
		std::tie(min, max) = pc_limits(random_privacy_class());
		assert(0 <= min && min <= 1);
		assert(0 <= max && max <= 1);
		generate_weights(id, std::uniform_real_distribution<float>{min, max});
	}

	// return only the weigts for items in the `subset'
	//
	// set<item_id_t> (sorted): 3   76  195 344
	// subset                 : 3   -   195 -
	// privacy_weights(vector): 0.5 1.0 0.3 0.24
	// return value           : 0.5     0.3 (in that order)
	// for every subset item, find index in set, append privacy_weight at that index// a map would be better
	std::vector<float> v;
	for(auto const &subset_item : subset)
		v.push_back(privacy_weights[id][subset_item]);

	return v;
}

float cached_similarity(user_id_t a, user_id_t b) {
	// make sure that the pair<2,3> and pair<3,2> are the same by always putting the /larger/ id last
	if(a > b)
		return cached_similarity(b, a);

	auto id = std::make_pair(a,b);

	if(similarities.count(id))
		return similarities[id];

	std::vector<item_id_t> intersection;
	boost::set_intersection(dataset.value()[a], dataset.value()[b], std::back_inserter<>(intersection));

	ba::accumulator_set<float, ba::features<ba::tag::sum_kahan>> acc;

	// FIXME: hidding assumption: items are stored in `sorted' set. (to guarantee retval of weights_of is aligned in both)
	// the inner product of the two weights vectors (but only for the items in the intersection)
	boost::range::for_each(weights_of(a, intersection),
	                       weights_of(b, intersection),
	                       std::bind(std::ref(acc),
	                                 std::bind(std::multiplies<float>(),
	                                           std::placeholders::_1,
	                                           std::placeholders::_2)));
	// divide squared inner product by size1 * size2 to get cosine similarity
	auto inner_prod = ba::sum_kahan(acc);
	inner_prod *= inner_prod;
	auto denominator = dataset.value()[a].size() * dataset.value()[b].size();
	return similarities[id] = inner_prod / denominator;
}

float similarity(user_id_t a,
                 user_id_t b) {
	if(!dataset)
		dataset = some(load_dataset("digg.txt"));

	return cached_similarity(a, b);
}
