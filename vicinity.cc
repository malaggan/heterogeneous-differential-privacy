// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "vicinity.hh"
#include "random.hh"
#include </usr/include/boost/range/algorithm/partial_sort_copy.hpp>
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
namespace helpers {
	namespace {
		using dataset_t = std::vector<std::set<item_id_t>>; // has to be an ordered set for set_intersection later
		dataset_t load_dataset(std::string path);

		// TODO: avoid global state
		std::experimental::optional<dataset_t> dataset{std::experimental::nullopt};
		std::unordered_map<user_id_t, std::vector<float>> privacy_weights;
		// this global var caches the perturbed similarity values. to change the noise, application must be re-run.
		std::map<std::pair<user_id_t, user_id_t>, float> similarities; // TODO: not using unordered_map to avoid defining hash for pair, but it would be faster.

		template <typename Distribution>
		void generate_weights(user_id_t id, Distribution pc) {
			assert(privacy_weights[id].empty());
			std::generate_n(std::back_inserter<>(privacy_weights[id]),
			                dataset.value()[id].size(),
			                std::bind(pc, rng));  // random weights , if not already generated
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
			// for every subset item, find index in set, append privacy_weight at that index
			std::vector<float> v;
			for(auto const &subset_item : subset) {
				auto index = std::distance(std::begin(dataset.value()[id]), dataset.value()[id].find(subset_item));
				v.push_back(privacy_weights[id][index]);
			}
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
				dataset = load_dataset("digg.txt");

			return cached_similarity(a, b);
		}

		template <typename T1, typename T2>
		float similarity(T1 const &a, T2 const& b) { return similarity(a.id, b.id); }

		// more_similar_to(this_guy, a, b)
		// returns true if a is more similar to reference than b
		template <typename T1, typename T2>
		bool more_similar(T1 const &reference, T2 const& a, T2 const& b) {
			return similarity(reference, a) > similarity(reference, b);
		}
	}
}

template<typename RPS>
auto vicinity<RPS>::send_gossip(std::experimental::optional<user_id_t> dest_opt) const -> std::tuple<vicinity<RPS>*, view_t> {
	// send to peer with oldest time stamp
	// AGGRESSIVELY BIASED:
	// Select the viewSize/2 items of nodes semantically closest to the selected peer
	//   from the VICINITY view and the CYCLON view

	std::vector<ventry_t> candidates(view.size() + RPS::view.size());

	auto semantic_comp = std::bind(helpers::more_similar<vicinity<RPS>, ventry_t>,
	                               *this,
	                               std::placeholders::_1,
	                               std::placeholders::_2);

	boost::partial_sort_copy(
		view,
		candidates, // std::begin(candidates) + view.size(), // do not need the verbosity. items copied are exactly min(size1, size2)
		semantic_comp);

	std::partial_sort_copy(
		std::begin(RPS::view)               , std::end(RPS::view),
		std::begin(candidates) + view.size(), std::end(candidates),
		semantic_comp);

	std::inplace_merge(
		std::begin(candidates),
		std::begin(candidates) + view.size(),
		std::end(candidates),
		semantic_comp);

	// thess are the items to send
	candidates.resize(viewSize/2);

	auto oldest = get_oldest_peer(view);
	if(oldest == view.end())
	{
		oldest = get_oldest_peer(RPS::view);
		assert(oldest != end(RPS::view));
	}
	auto target = dest_opt.value_or(oldest->id);
	return std::make_tuple(dynamic_cast<vicinity<RPS>*>(RPS::all_peers[target]), view_t{begin(candidates), end(candidates)});
}

#define UNUSED(x)
template<typename RPS>
void vicinity<RPS>::receive_gossip(
	view_t to_be_received,
	view_t UNUSED(was_sent)) {
#undef UNUSED
	// this is items to keep after receive
	// Keep the viewSize items of nodes that are semantically closest, out of items in its current view, items received, and items in the local CYCLON view.
	// In case of multiple items from the same node, keep the one with the most recent timestamp

	// 6. Discard entries pointing at me and entries already contained in my view (discarded automatically by `set').
	to_be_received.remove(RPS::id);

	std::vector<ventry_t> candidates(view.size() + RPS::view.size() + to_be_received.size());

	auto semantic_comp = std::bind(helpers::more_similar<vicinity<RPS>, ventry_t>,
	                               *this,
	                               std::placeholders::_1,
	                               std::placeholders::_2);

	boost::partial_sort_copy(
		view,
		candidates,
		semantic_comp);

	std::partial_sort_copy(
		std::begin(RPS::view)               , std::end(RPS::view),
		std::begin(candidates) + view.size(), std::end(candidates),
		semantic_comp);

	std::inplace_merge(
		std::begin(candidates),
		std::begin(candidates) + view.size(),
		std::end(candidates) + view.size() + RPS::view.size(),
		semantic_comp);

	std::partial_sort_copy(
		std::begin(to_be_received)                             , std::end(to_be_received),
		std::begin(candidates) + view.size() + RPS::view.size(), std::end(candidates),
		semantic_comp);

	std::inplace_merge(
		std::begin(candidates),
		std::begin(candidates) + view.size() + RPS::view.size(),
		std::end(candidates),
		semantic_comp);

	// keep only top `viewSize'. FIXME: should have removed duplicates, keeping oldest timestamp.
	candidates.resize(viewSize);
	view.clear_and_assign(candidates);
}

template <typename RPS>
void vicinity<RPS>::do_gossip() {
	view_t to_send;
	vicinity<RPS> *target;
	std::tie(target, to_send) = send_gossip();

	view_t to_receive;
	std::tie(std::ignore, to_receive) = target->send_gossip(RPS::id);

	receive_gossip(to_receive, to_send);
	target->receive_gossip(to_send, to_receive);
}



#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>

namespace helpers {
	namespace {
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
			         //    static_cast<pair<entry_t::iterator,bool> (entry_t::*) (const entry_t::value_type& )>(&entry_t::insert),
			         //    bind(static_cast<list_t::reference (list_t::*)(list_t::size_type)>(&list_t::at), ref(data), bind(minus<void>(),bind(&item::first,_1),1)),
			         //    bind(&item::second,_1)));
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
