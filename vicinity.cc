#include "vicinity.hh"
//#include </usr/include/boost/range/algorithm/partial_sort_copy.hpp>
#include <algorithm>
#include <vector>

namespace {
    namespace helpers {

	bool semantic_less(abstract_user::user_id_t a,
			   abstract_user::user_id_t b) {
	    // lookup a user-user similarity matrix (TODO: locate that file...)
	}
	
	template <typename T>
	bool semantic_less(T const &a, T const& b) { return semantic_less(a.id, b.id); }
	    
    }
}

template <typename RPS>
void vicinity<RPS>::do_gossip() {
    // send to peer with oldest time stamp
    // AGGRESSIVELY BIASED:
    // Select the viewSize/2 items of nodes semantically closest to the selected peer
    //   from the VICINITY view and the CYCLON view

    // TODO add `compare' which compares semantic profiles using look-up by id
    std::vector<typename RPS::slot> candidates(view.size()+RPS::view.size());

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

// explicit instantiation
#include "cyclon.hh"
template void vicinity<cyclon>::do_gossip();
