#include "rps.hpp"

#include "RandomSample.tcc"
#include <boost/range/adaptor/map.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <iostream>
#include <iterator>
#include <cassert>
#include <iomanip>
RPS::RPS(user_id_t me, set_t &already_joined, all_t &all_peers) 
    : abstract_user{me}, view{}, all_peers{all_peers}
{
    // [1]
    auto bootstrapPeers = RandomSample(already_joined, viewSize);
    // already_joined.insert(this); // do it from the main. here it does not work and fails to dynamic_cast.
    for(auto other : bootstrapPeers)
    {
	auto rps_other = dynamic_cast<RPS*>(other);
	assert(rps_other != nullptr);
	// if the other's RPS view is incomplete, swap selves:
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

auto RPS::RandomNeighbor() const -> user_id_t {
    return *RandomSample(view | boost::adaptors::map_keys, 1).begin();
}
#include <boost/function_output_iterator.hpp>
#include <boost/lambda/lambda.hpp>
void RPS::printView() const {
    using namespace boost::lambda;
    boost::copy(
	view | boost::adaptors::map_keys,
	//std::ostream_iterator<int>(std::cout, ",")
	boost::make_function_output_iterator( 
	    var(std::cout) << std::setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    std::cout << std::endl;
}

auto RPS::RandomReplace(user_id_t id) -> user_id_t {
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
void RPS::doGossip() {
    // [2]
    // getGossipDest: oldest peer in the RPS view, put it in the front of RPS, then shuffle the rest    
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
    auto dest = dynamic_cast<RPS*>(all_peers[max]);
    assert(dest != nullptr);
    // FIXME: i cannot shuffle the other peer's view since the view_t container does not provide RandomAccessIterator needed by std::shuffle
    std::deque<view_t::value_type> otherview{std::begin(dest->view), std::end(dest->view)};
    std::shuffle(std::begin(otherview), std::end(otherview), rng);
// shuffle the destination RPS view
//   loop for i = 0 ; i < viewsiz/2
//      if i == 0; set vToD to this peer, otherwise to i-th peer in this peer's RPS view
//      if vToD not already in other peer's RPS view, append it, or set i-th pos if | | = viewSize
//      else reset time of i-th peer in other peer's RPS ; and make other's peer copy at least as old as  ours
     
//      set dToV to i-th peer of other's peer RPS (if exists), or last one if that peer is this peer
//      append it this peer's RPS (or put it in i-th pos is | | = viewSize) if not existent
//      otherwise reset time of i-th pos and make my copy at least as old as theirs
//   increment time stamp for all peers in both RPS views    
}

/* [1]
   threadedSim.gossip.rps.RPSGossipInitializer:
Boostrapping:
alreadyJoined = empty_set
for every peer to initialize:
  bootstrapPeers = random sample from alreadyJoined of size at most viewSize
  add current peer to alreadyJoined
      for every booter in bootstrapPeers:
            if booter's RPS < viewSize: add him to me and add me to him
        else take a random peer from his RPS and put me instead of it;
           add this peer to my RPS if not already there, otherwise add the booter himself
*/

/* [2]
   threadedSim.gossip.rps.RPSGossipTask:
doGossip(getGossipDest())
getGossipDest: oldest peer in the RPS view, put it in the front of RPS, then shuffle the rest
doGossip:
  shuffle the destination RPS view
  loop for i = 0 ; i < viewsiz/2
     if i == 0; set vToD to this peer, otherwise to i-th peer in this peer's RPS view
     if vToD not already in other peer's RPS view, append it, or set i-th pos if | | = viewSize
     else reset time of i-th peer in other peer's RPS ; and make other's peer copy at least as old as  ours
     
     set dToV to i-th peer of other's peer RPS (if exists), or last one if that peer is this peer
     append it this peer's RPS (or put it in i-th pos is | | = viewSize) if not existent
     otherwise reset time of i-th pos and make my copy at least as old as theirs
  increment time stamp for all peers in both RPS views
 */
