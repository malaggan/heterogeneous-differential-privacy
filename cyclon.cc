// Implementing: Voulgaris, S., Gavidia, D., & Van Steen, M. (2005). Cyclon: Inexpensive membership management for unstructured p2p overlays. Journal of Network and Systems Management, 13(2), 197-217. (DOI: 10.1007/s10922-005-4441-x)
#include "random_sample.tcc"
#include "random.hh"
#include "cyclon.hh"

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
using boost::algorithm::copy_if;
using boost::lambda::var;
using std::back_inserter;
using boost::lambda::_1;
using std::make_tuple;
using std::inserter;
using std::shuffle;
using boost::copy;
using std::cbegin;
using std::ignore;
using std::begin;
using std::tuple;
using std::deque;
using std::setw;
using std::cout;
using std::endl;
using std::cend;
using std::end;
using std::tie;
using std::setfill;
using std::setw;
using std::left;
using std::right;

cyclon::cyclon(user_id_t me, set_t &already_joined, all_t &all_peers)
	: abstract_user{me}, view{}, all_peers{all_peers}
{
	auto bootstrapPeers = already_joined.random_subset(viewSize);
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

void cyclon::add(user_id_t u) {
	view.add(u);
}

bool cyclon::contains(user_id_t u) const {
	return view.contains(u);
}

void cyclon::remove(user_id_t u) {
	view.remove(u);
}

auto cyclon::operator[](user_id_t u)       -> maybe<view_t::iterator>       { return view.get_by_id(u); }
auto cyclon::operator[](user_id_t u) const -> maybe<view_t::const_iterator> { return view.get_by_id(u); }

void cyclon::exchange_ids(cyclon &other) {
	add(other.id); // age is zero
	other.add(id);
}

auto cyclon::random_neighbor() const -> user_id_t {
	return view.random_element();
}

void cyclon::print_view() const {
	// copy(
	//	view | ::helpers::map_ids,
	//	make_function_output_iterator(
	//		var(cout) << setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	//	);
	// cout << endl;

				if(this->id == 1) {
				extern rational similarity(user_id_t a,
																 user_id_t b);
				extern uint32_t current_cycle;
				cout << 'R'
						 << setfill('0') << setw(2) << right << current_cycle;
						for (auto neighbor : view | ::helpers::map_ids)
								if( similarity(this->id, neighbor) > rational{0} )
										cout << setfill(' ') << setw(4) << right << neighbor << ": "
												 << setfill(' ') << setw(10) << left << similarity(this->id, neighbor);
				cout << endl;
		}
}

auto cyclon::random_replace(user_id_t id) -> user_id_t {
	auto victim = random_neighbor();
	remove(victim);
	add(id);
	return victim;
}

auto cyclon::send_gossip(maybe<user_id_t> dest_opt) const -> tuple<cyclon*, view_t> {
	// 1. Increase by one the age of all neighbors.
	for(auto &neighbor : view) // std::for_each ?
		neighbor ++;

	// 2. Select neighbor Q with the highest age among all neighbors
	assert(!view.empty());
	auto dest = dest_opt.value_or(view.get_oldest_peer().value()->id);
	// 2. Select L − 1 other random neighbors.
	deque<view_t::key_type> myview{begin(view),end(view)};
	copy_if(view, back_inserter<>(myview), [dest](auto const&p){return p.id != dest;});
	myview = random_sample<deque>()(myview, viewSize/2);
	// 3. Replace Q’s entry with a new entry of age 0 and with my address.
	myview.emplace_front(id, 0);
	return make_tuple(dynamic_cast<cyclon*>(all_peers[dest]), view_t{begin(myview), end(myview)});
}

void cyclon::receive_gossip(
	view_t to_be_received,
	view_t was_sent) {
	// 6. Discard entries pointing at me and entries already contained in my view (discarded automatically by `set').
	to_be_received.remove(id);
	copy(to_be_received, std::inserter(view, end(view))); // NOTE: change this to copy_if, using `!contains', if view_t is not a `set' . Instead:
	//        auto it = std::unique(row.begin(), row.end()); row.resize(it - row.begin());

	//
	// update age of entries contained in my view with those arriving !
	for(auto const& a : to_be_received)
	{
		auto p = view.find(a);
		if(p != end(view))
			p->update_age(a);
	}
	// 7. Update my view to include all remaining entries, by firstly using empty view ventrys (if any) [[done above in `copy']],
	// and secondly replacing entries among the ones sent to Q.

	auto excess = view.size() - viewSize;
	if(excess <= 0) return;
	// remove elements from those sent to Q until size is within bounds
	for(auto a  = begin(was_sent); a != end(was_sent) && excess > 0; excess--) // not using range-based for because I need an iterator for `erase'
	{
		auto p = view.find(*a);
		if(p != end(view))
		{
			a = was_sent.erase(a); // assignment keeps the iterator valid by pointing to the next one
			view.erase(p);
		}
		else
			++a;
	}

	cyclon::print_view();
}

void cyclon::do_gossip() {
	view_t to_send;
	cyclon *target;
	std::tie(target, to_send) = send_gossip();

	view_t to_receive;
	std::tie(ignore, to_receive) = target->send_gossip(some(id));

	receive_gossip(to_receive, to_send);
	target->receive_gossip(to_send, to_receive);
}
