// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "vicinity.hh"
#include "random.hh"
//#include </usr/include/boost/range/algorithm/partial_sort_copy.hpp>
#include <boost/range/algorithm/transform.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <boost/range/algorithm_ext/for_each.hpp>
#include <algorithm>
#include <vector>
#include <unordered_map>
#include <set>
#include <map>
#include <experimental/optional>
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <iterator>
namespace ba = boost::accumulators;
namespace {
    namespace helpers {
	using dataset_t = std::vector<std::set<item_id_t>>; // has to be an ordered set for set_intersection later
	dataset_t load_dataset(std::string path);

	// TODO: avoid global state
	std::experimental::optional<dataset_t> dataset{std::experimental::nullopt};
	std::unordered_map<user_id_t, std::vector<float>> privacy_weights;
	// this global var caches the perturbed similarity values. to change the noise, application must be re-run.
	std::map<std::pair<user_id_t, user_id_t>, float> similarities; // TODO: not using unordered_map to avoid defining hash for pair, but it would be faster.

	// TODO: can't this be cached? return a reference?
	std::vector<float> weights_of(user_id_t id, std::vector<item_id_t> const & subset) {
	    if(!privacy_weights.count(id))
		std::generate_n(std::back_inserter<>(privacy_weights[id]),
				dataset.value()[id].size(),
				std::bind(std::uniform_real_distribution<float>{},rng));  // random weights , if not already generated
	    
	    // return only the weigts for items in the `subset'
	    //
	    // set<item_id_t> (sorted): 3   76  195 344
	    // subset                 : 3   -   195 -
	    // privacy_weights(vector): 0.5 1.0 0.3 0.24
	    // return value           : 0.5     0.3 (in that order)
	    // for every subset item, find index in set, append privacy_weight at that index
	    std::vector<float> v;
	    for(auto const &subset_item : subset) {
		auto index = std::distance(std::begin(dataset.value()[id]), dataset.value()[id].find(subset_item));
		v.push_back(privacy_weights[id][index]);
	    }
	    return v;
		// TODO: support privacy classes (unconcerned, etc...)
	}

	float cached_similarity(user_id_t a, user_id_t b) {
	    // make sure that the pair<2,3> and pair<3,2> are the same by always putting the /larger/ id last
	    if(a > b) std::swap(a,b);
	    auto id = std::make_pair(a,b);
	    if(!similarities.count(id)) {
		// where are the privacy weights?
		std::vector<item_id_t> intersection;
		boost::set_intersection(dataset.value()[a], dataset.value()[b], std::back_inserter<>(intersection));
	    
		ba::accumulator_set<float, ba::features<ba::tag::sum_kahan>> acc;

		// warn: hidding assumption: items are stored in `sorted' set.
		boost::range::for_each(weights_of(a, intersection),
				       weights_of(b, intersection),
				       std::bind(std::ref(acc),
						 std::bind(std::multiplies<float>(),
							   std::placeholders::_1,
							   std::placeholders::_2)));

		return similarities[id] = ba::sum_kahan(acc)
		    / dataset.value()[a].size()
		    / dataset.value()[b].size();
	    }
	    return similarities[id];
	}
	    
	float similarity(user_id_t a,
			 user_id_t b) {
	    
	    if(!dataset)
		dataset = load_dataset("digg.txt");
	    
	    return cached_similarity(a, b);
	}
	
	template <typename T>
	float similarity(T const &a, T const& b) { return similarity(a.id, b.id); }

	// TODO: more_similar_to(this_guy, a, b)
    }
}

template <typename RPS>
void vicinity<RPS>::do_gossip() {
    // send to peer with oldest time stamp
    // AGGRESSIVELY BIASED:
    // Select the viewSize/2 items of nodes semantically closest to the selected peer
    //   from the VICINITY view and the CYCLON view

    // TODO add `compare' which compares semantic profiles using look-up by id
    std::vector<slot> candidates(view.size()+RPS::view.size());

    std::partial_sort_copy(
	std::begin(view)      , std::end(view),
	std::begin(candidates), std::begin(candidates) + view.size());

    std::partial_sort_copy(
	std::begin(RPS::view)               , std::end(RPS::view),
	std::begin(candidates) + view.size(), std::end(candidates));
    
    std::inplace_merge(
	std::begin(candidates),
	std::begin(candidates) + view.size(),
	std::end(candidates));
    
    candidates.resize(viewSize/2);
    
    // Keep the viewSize items of nodes that are semantically closest, out of items in its current view, items received, and items in the local CYCLON view.
    // In case of multiple items from the same node, keep the one with the most recent timestamp
}

#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>

namespace {
    namespace helpers {
	// http://stackoverflow.com/a/16546151/397405
	struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };
	
	std::istream& operator>>(std::istream& in, item& p) { in >> p.first; in >> p.second; return in; }
	dataset_t load_dataset(std::string path)
	{
	    using namespace std;
	    using namespace std::placeholders;
	    auto f = ifstream{ path };
	    assert(f);
	    string signature;
	    f >> signature;
	    assert(signature == "dims");
	    uint_fast32_t user_count, item_count;
	    f >> user_count >> item_count;

	    using entry_t = set<uint_fast32_t>;
	    using list_t = vector<entry_t>;
	    list_t data(user_count);
    
	    for_each(istream_iterator<item>(f), istream_iterator<item>(),
		     // bind(
		     // 	 static_cast<pair<entry_t::iterator,bool> (entry_t::*) (const entry_t::value_type& )>(&entry_t::insert),
		     // 	 bind(static_cast<list_t::reference (list_t::*)(list_t::size_type)>(&list_t::at), ref(data), bind(minus<void>(),bind(&item::first,_1),1)),
		     // 	 bind(&item::second,_1)));
		     [&data](item const& item) {
			 data[item.first - 1].insert(item.second);
		     });

	    return data;
	}
    }
}
// explicit instantiation
#include "cyclon.hh"
template void vicinity<cyclon>::do_gossip();




