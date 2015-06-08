#include "Cyclon.hpp"
#include "Range.tcc"
#include "RandomSample.tcc"
#include <boost/range/adaptor/map.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <boost/range/algorithm/find_if.hpp>
#include <iostream>
#include <iterator>
#include <cassert>
#include <iomanip>
Cyclon::Cyclon(user_id_t me, set_t &already_joined, all_t &all_peers) 
    : abstract_user{me}, view{}, all_peers{all_peers}
{
    // [1]
    auto bootstrapPeers = RandomSample(already_joined, viewSize);
    // already_joined.insert(this); // do it from the main. here it does not work and fails to dynamic_cast.
    for(auto other : bootstrapPeers)
    {
	auto rps_other = dynamic_cast<Cyclon*>(other);
	assert(rps_other != nullptr);
	// if the other's Cyclon view is incomplete, swap selves:
	if(rps_other->view.size() < viewSize)
	{
	    view[rps_other->id] = 0; // 0 is the age
	    rps_other->view[id] = 0; 
	}
	else
	{   
	    auto removed = rps_other->RandomReplace(id);
	    if(view.find(removed) != std::end(view))
		view[rps_other->id] = 0;
	    else 
		view[removed] = 0;
	}
    }
}

auto Cyclon::RandomNeighbor() const -> user_id_t {
    return *RandomSample(view | boost::adaptors::map_keys, 1).begin();
}
#include <boost/function_output_iterator.hpp>
#include <boost/lambda/lambda.hpp>
void Cyclon::printView() const {
    using namespace boost::lambda;
    boost::copy(
	view | boost::adaptors::map_keys,
	//std::ostream_iterator<int>(std::cout, ",")
	boost::make_function_output_iterator( 
	    var(std::cout) << std::setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    std::cout << std::endl;
}

auto Cyclon::RandomReplace(user_id_t id) -> user_id_t {
    auto victim = RandomNeighbor();
    view.erase(victim);
    view[id] = 0;
    return victim;
}
#include <boost/range/algorithm/max_element.hpp>
auto getOldestPeerInView = [](auto const &view) {
    return boost::max_element(view,
			      [](const auto &p1, const auto &p2) {
				  return p1.second < p2.second;});
};

#include <deque>
#include <boost/range/algorithm_ext/erase.hpp>
#include "Random.hpp"
void Cyclon::doGossip() {
    // [2]
    // getGossipDest: oldest peer in the Cyclon view, put it in the front of Cyclon, then shuffle the rest    
    auto max = getOldestPeerInView(view)->first;
    auto range = view | boost::adaptors::map_keys;
    std::deque<view_t::key_type> myview{std::begin(range),std::end(range)};
    boost::remove_erase(myview, max);
    myview.push_front(max);
    auto second = std::begin(myview);
    std::advance(second, 1);
    std::shuffle(second, std::end(myview), rng);
    // end getGossipDest
    // work with `myview' now.
    auto dest = dynamic_cast<Cyclon*>(all_peers[max]);
    assert(dest != nullptr);
    std::vector</*view_t::value_type*/std::pair<long unsigned int, long unsigned int>> otherview{std::begin(dest->view), std::end(dest->view)};
    std::shuffle(std::begin(otherview), std::end(otherview), rng);
    for(auto i : Range(viewSize/2))
    {
	view_t::key_type vToD = i?myview[i]:id, dToV;
	auto c = boost::find_if(otherview, [vToD](auto a){return a.first == vToD;});
	if(c == std::end(otherview))
	{
	    if(otherview.size() < viewSize)
		otherview.push_back(std::make_pair(vToD,0));
	    else
		otherview[i] = std::make_pair(vToD,0);
	}
	else
	{
	    otherview[i] = std::make_pair(otherview[i].first,0);
	    myview[i].second = at least as old as theirs
	}
    }
//      else reset time of i-th peer in other peer's Cyclon ; and make other's peer copy at least as old as  ours
     
//      set dToV to i-th peer of other's peer Cyclon (if exists), or last one if that peer is this peer
//      append it this peer's Cyclon (or put it in i-th pos is | | = viewSize) if not existent
//      otherwise reset time of i-th pos and make my copy at least as old as theirs
//   increment time stamp for all peers in both Cyclon views    
}

/* [1]
   threadedSim.gossip.rps.CyclonGossipInitializer:
Boostrapping:
alreadyJoined = empty_set
for every peer to initialize:
  bootstrapPeers = random sample from alreadyJoined of size at most viewSize
  add current peer to alreadyJoined
      for every booter in bootstrapPeers:
            if booter's Cyclon < viewSize: add him to me and add me to him
        else take a random peer from his Cyclon and put me instead of it;
           add this peer to my Cyclon if not already there, otherwise add the booter himself
*/

/* [2]
   threadedSim.gossip.rps.CyclonGossipTask:
doGossip(getGossipDest())
getGossipDest: oldest peer in the Cyclon view, put it in the front of Cyclon, then shuffle the rest
doGossip:
  shuffle the destination Cyclon view
  loop for i = 0 ; i < viewsiz/2
     if i == 0; set vToD to this peer, otherwise to i-th peer in this peer's Cyclon view
     if vToD not already in other peer's Cyclon view, append it, or set i-th pos if | | = viewSize
     else reset time of i-th peer in other peer's Cyclon ; and make other's peer copy at least as old as  ours
     
     set dToV to i-th peer of other's peer Cyclon (if exists), or last one if that peer is this peer
     append it this peer's Cyclon (or put it in i-th pos is | | = viewSize) if not existent
     otherwise reset time of i-th pos and make my copy at least as old as theirs
  increment time stamp for all peers in both Cyclon views
 */
