// Implementing: Voulgaris, S., & Van Steen, M. (2005). Epidemic-style management of semantic overlays for content-based searching. In Euro-Par 2005 Parallel Processing (pp. 1143-1152). Springer Berlin Heidelberg. (DOI: 10.1007/11549468_125)
#include "vicinity.hh"
//#include </usr/include/boost/range/algorithm/partial_sort_copy.hpp>
#include <algorithm>
#include <vector>

namespace {
    namespace helpers {

	bool semantic_less(user_id_t,
			   user_id_t) {
	    // lookup a user-user similarity matrix (TODO: locate that file...)
	    // use libsparse_matrix?
	    
	    return true;
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
#include <unordered_set>
#include <vector>
#include <iterator>
#include <iostream>
#include <cassert>
#include <functional>

// http://stackoverflow.com/a/16546151/397405
struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };

std::istream& operator>>(std::istream& in, item& p) { in >> p.first; in >> p.second; return in; }

std::vector<std::unordered_set<uint_fast32_t>> load_dataset(std::string path)
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

    using entry_t = unordered_set<uint_fast32_t>;
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

int main()
{
    load_dataset("digg.txt");
    return 0;
}


// explicit instantiation
#include "cyclon.hh"
template void vicinity<cyclon>::do_gossip();




