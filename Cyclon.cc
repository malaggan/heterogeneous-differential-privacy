#include "RandomSample.tcc"
#include "Random.hpp"
#include "Cyclon.hpp"
#include "Range.tcc"

#include <boost/range/algorithm/max_element.hpp>
#include <boost/range/adaptor/transformed.hpp>
#include <boost/function_output_iterator.hpp>
#include <boost/range/algorithm/find_if.hpp>
#include <boost/algorithm/cxx11/copy_if.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <boost/lambda/lambda.hpp>
#include <algorithm>
#include <iostream>
#include <iterator>
#include <cassert>
#include <iomanip>
#include <deque>

using boost::make_function_output_iterator;
using boost::adaptors::transformed;
using std::experimental::optional;
using std::experimental::nullopt;
using boost::algorithm::copy_if;
using namespace boost::lambda;
using boost::max_element;
using std::shuffle;
using std::find_if;
using boost::copy;
using std::cbegin;
using std::begin;
using std::setw;
using std::cout;
using std::endl;
using std::cend;
using std::end;
using std::deque;


void cyclon::add(user_id_t u) {
    view.emplace(u,0);
}

bool cyclon::contains(user_id_t u) const {
    return !!((*this)[u]);
}

void cyclon::remove(user_id_t u) {
    auto p = (*this)[u];
    if(p)
	view.erase(p.value());
}

auto
cyclon::operator[](user_id_t u)
    -> optional<view_t::iterator>
{
    auto p = find_if(begin(view), end(view), [u](auto const &a){return a.id==u;});
    if(p == end(view))
	return nullopt;
    return p;
}

auto
cyclon::operator[](user_id_t u) const
    -> optional<view_t::const_iterator>
{
    auto p = find_if(cbegin(view), cend(view), [u](auto const &a){return a.id==u;});
    if(p == cend(view))
	return nullopt;
    return p;
}

void cyclon::exchange_ids(cyclon &other) {
    add(other.id); // age is zero
    other.add(id);
}
cyclon::cyclon(user_id_t me, set_t &already_joined, all_t &all_peers) 
    : abstract_user{me}, view{}, all_peers{all_peers}
{
    auto bootstrapPeers = random_sample<>()(already_joined, viewSize);
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
    return *random_sample<>()(view | transformed([](auto const &a){return a.id;}), 1).begin();
}

void cyclon::print_view() const {
    copy(
	view | transformed([](auto const &a){return a.id;}),
	make_function_output_iterator( 
	    var(cout) << setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    cout << endl;
}

auto cyclon::random_replace(user_id_t id) -> user_id_t {
    auto victim = random_neighbor();
    remove(victim);
    add(id);
    return victim;
}

auto get_oldest_peer = [](auto const &view) {
    return max_element(view,
		       [](const auto &p1, const auto &p2) {
			   return p1 < p2;});
};

template <typename T>
void cyclon::send_gossip(T dest) const {
    // 1. Increase by one the age of all neighbors.
    for(auto &neighbor : view) // std::for_each ?
	neighbor ++;
    
    // 2. Select neighbor Q with the highest age among all neighbors
    auto max = get_oldest_peer(view);
    // 2. Select L − 1 other random neighbors.
    deque<view_t::key_type> myview{begin(view),end(view)};
    copy_if(view, std::back_inserter<>(myview), [max](auto const&p){return p != *max;});
    myview = random_sample<deque>()(myview, viewSize/2);
    // 3. Replace Q’s entry with a new entry of age 0 and with my address.    
    myview.emplace_front(id, 0);
    dynamic_cast<cyclon*>(all_peers[dest->id])
	->receive_gossip(this, view_t{begin(myview), end(myview)}); 
}

void cyclon::receive_gossip(cyclon const */*from*/, view_t const &msg) {
    // 6. Discard entries pointing at me and entries already contained in my view.
    // TODO: extract functionality of add/contains/remove to non-member functions and use from here
    // msg.remove(id);
    // msg.remove_all(view | get_keys /* using `transformed' */)
    
    // 7. Update my view to include all remaining entries, by firstly using empty view slots (if any), and secondly replacing entries among the ones sent to Q.

}

void cyclon::do_gossip() {
    send_gossip(get_oldest_peer(view));
    
    
    // myview.push_front(max);
    // auto second = begin(myview);
    // std::advance(second, 1);
    // std::shuffle(second, end(myview), rng);
    // // end getGossipDest
    // // work with `myview' now.
    // auto dest = dynamic_cast<cyclon*>(all_peers[max]);
    // assert(dest != nullptr);
    // std::vector</*view_t::value_type*/std::pair<long unsigned int, long unsigned int>> otherview{begin(dest->view), end(dest->view)};
    // std::shuffle(begin(otherview), end(otherview), rng);
    // for(auto i : Range(viewSize/2))
    // {
    // 	view_t::key_type vToD = i?myview[i]:id, dToV;
    // 	auto c = boost::find_if(otherview, [vToD](auto a){return a.first == vToD;});
    // 	if(c == end(otherview))
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
