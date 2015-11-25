#pragma once

#include "conf.hh"
#include <unordered_map>
#include <unordered_set>
#include <tuple>

class user;

using all_t     = std::unordered_map<user_id_t, user*>;

#include "random_sample.tcc"
#include "view.hh"

class user final {
public:
	user_id_t id;
public:
	struct hash   { constexpr std::size_t operator()(user const *u) const { return u->id; }};
	struct key_eq { constexpr bool        operator()(user const *a, user const *b) const { return a->id == b->id; }};

	using set_base = std::unordered_set<user*,user::hash,user::key_eq>;  // [1]
class set_t : public set_base
{
		using set_base::set_base; // inherit constructors
public:
		auto random_subset(size_t size) const {
				return random_sample<>{}(*this, size);
		}
};


explicit user(user_id_t me, set_t &already_joined, all_t &all_peers);
	// cyclon stuff
	view_t																							 cyclon_view;
	all_t																								 &all_peers;

	void																								 add(user_id_t u);
	bool																								 contains(user_id_t u) const;
	void																								 remove(user_id_t u);
	user_id_t																						 random_neighbor() const;
	user_id_t																						 random_replace(user_id_t id);
	void																								 cyclon_do_gossip();
	std::tuple<user*,view_t>														 cyclon_send_gossip(maybe<user_id_t> = none) const;
	void																								 cyclon_receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);
	void																								 exchange_ids(user &other);
	maybe<view_t::iterator>															 operator[](user_id_t u);
	maybe<view_t::const_iterator>	                       operator[](user_id_t u) const;
	void																								 cyclon_print_view() const;
	// vicinity stuff
	view_t												 vicinity_view;
	void													 vicinity_do_gossip();
	std::tuple<user*,view_t>	     vicinity_send_gossip(maybe<user_id_t> = none) const;
	void													 vicinity_receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);
	void													 vicinity_print_view() const;
	rational											 recall() const;

	~user() {}
};


// [1] I could have used
// std::unordered_set<std::shared_ptr<user>>. I do not
// because I need to add to this container during construction. The
// problem is that I would need to inherit from
// std::enable_shared_from_this<user>, and then call
// shared_from_this(). However, it cannot be called during
// construction, otherwise bad_weak_ptr is thrown.
