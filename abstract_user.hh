#pragma once

#include "conf.hh"
#include <unordered_map>
#include <functional>

class abstract_user;

// set_t key equality test
namespace std {
	template <> struct equal_to<abstract_user*>
	{
		bool operator()(const abstract_user* a, const abstract_user* b) const;
	};
}

#include "view_t.hh"
#include "set_t.hh"

using all_t     = std::unordered_map<user_id_t, abstract_user*>;

class abstract_user {
public:
	user_id_t id;
public:
	explicit abstract_user(user_id_t id) : id{id} {}

	virtual void do_gossip() = 0; // TODO : remember to user "override" in subclasses. TODO convert to coroutine
	virtual void print_view() const {}
	virtual ~abstract_user() {}
};
