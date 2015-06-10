#include "Cyclon.hpp"
#include "Range.tcc"
#include "RandomSample.tcc"
#include <boost/range/adaptor/transformed.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <boost/range/algorithm/find_if.hpp>
#include <iostream>
#include <iterator>
#include <cassert>
#include <iomanip>
#include <algorithm>

void cyclon::add(user_id_t u) { view.emplace(u,0); }

auto
cyclon::operator[](user_id_t u)
    -> typename std::experimental::optional<view_t::iterator>
{
    auto p = std::find_if(std::begin(view), std::end(view), [u](auto const &a){return a.id==u;});
    if(p == std::end(view))
	return std::experimental::nullopt;
    return p;
}

auto
cyclon::operator[](user_id_t u) const
    -> typename std::experimental::optional<view_t::const_iterator>
{
    auto p = std::find_if(std::cbegin(view), std::cend(view), [u](auto const &a){return a.id==u;});
    if(p == std::cend(view))
	return std::experimental::nullopt;
    return p;
}

bool cyclon::contains(user_id_t u) const
{
    return !!((*this)[u]);
}
void cyclon::remove(user_id_t u)
{
    auto p = (*this)[u];
    if(p)
	view.erase(p.value());
}
void cyclon::exchange_ids(cyclon &other) {
    add(other.id); // age is zero
    other.add(id);
}
cyclon::cyclon(user_id_t me, set_t &already_joined, all_t &all_peers) 
    : abstract_user{me}, view{}, all_peers{all_peers}
{
    auto bootstrapPeers = random_sample(already_joined, viewSize);
    for(auto other : bootstrapPeers)
    {
	auto rps_other = dynamic_cast<cyclon*>(other);
	assert(rps_other != nullptr);
	// if the other's cyclon view is incomplete, swap selves:
	if(rps_other->view.size() < viewSize)
	    exchange_ids(*rps_other);
	else
	{   
	    auto removed = rps_other->random_replace(id);
	    if(contains(removed))
		rps_other->add(id);
	    else
		add(removed);
	}
    }
}

auto cyclon::random_neighbor() const -> user_id_t {
    return *random_sample(view | boost::adaptors::transformed([](auto const &a){return a.id;}), 1).begin();
}

#include <boost/function_output_iterator.hpp>
#include <boost/lambda/lambda.hpp>
void cyclon::print_view() const {
    using namespace boost::lambda;
    boost::copy(
	view | boost::adaptors::transformed([](auto const &a){return a.id;}),
	//std::ostream_iterator<int>(std::cout, ",")
	boost::make_function_output_iterator( 
	    var(std::cout) << std::setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    std::cout << std::endl;
}

auto cyclon::random_replace(user_id_t id) -> user_id_t {
    auto victim = random_neighbor();
    remove(victim);
    add(id);
    return victim;
}
#include <boost/range/algorithm/max_element.hpp>
auto get_oldest_peer = [](auto const &view) {
    return boost::max_element(view,
			      [](const auto &p1, const auto &p2) {
				  return p1 < p2;});
};

#include <deque>
#include <boost/range/algorithm_ext/erase.hpp>
#include "Random.hpp"
void cyclon::do_gossip() {
    // 1. Increase by one the age of all neighbors.
    for(auto &neighbor : view)
	neighbor ++;
    
    // 2. Select neighbor Q with the highest age among all neighbors
    auto max = get_oldest_peer(view);
    // 2. Select L − 1 other random neighbors.
    auto range = view; // | boost::adaptors::map_keys;
    std::deque<view_t::key_type> myview{std::begin(range),std::end(range)};
    boost::remove_erase(myview, *max);
    std::shuffle(std::begin(myview), std::end(myview), rng);
    if(myview.size() >= viewSize/2) // >= , not >
	myview.resize(viewSize/2-1);
    // 3. Replace Q’s entry with a new entry of age 0 and with my address.
    myview.emplace_front(id, 0);
    

    // 4. Send the updated subset to peer Q.
    // 5. Receive from Q a subset of no more that i of its own entries.
    // 6. Discard entries pointing at me and entries already contained in my view.
    // 7. Update my view to include all remaining entries, by firstly using empty view slots (if any), and secondly replacing entries among the ones sent to Q.
    
   
    
    
    // myview.push_front(max);
    // auto second = std::begin(myview);
    // std::advance(second, 1);
    // std::shuffle(second, std::end(myview), rng);
    // // end getGossipDest
    // // work with `myview' now.
    // auto dest = dynamic_cast<cyclon*>(all_peers[max]);
    // assert(dest != nullptr);
    // std::vector</*view_t::value_type*/std::pair<long unsigned int, long unsigned int>> otherview{std::begin(dest->view), std::end(dest->view)};
    // std::shuffle(std::begin(otherview), std::end(otherview), rng);
    // for(auto i : Range(viewSize/2))
    // {
    // 	view_t::key_type vToD = i?myview[i]:id, dToV;
    // 	auto c = boost::find_if(otherview, [vToD](auto a){return a.first == vToD;});
    // 	if(c == std::end(otherview))
    // 	{
    // 	    if(otherview.size() < viewSize)
    // 		otherview.push_back(std::make_pair(vToD,0));
    // 	    else
    // 		otherview[i] = std::make_pair(vToD,0);
    // 	}
    // 	else
    // 	{
    // 	    otherview[i] = std::make_pair(otherview[i].first,0);
    //         // myview[i].second = at least as old as theirs
    // 	}
    // }
}
