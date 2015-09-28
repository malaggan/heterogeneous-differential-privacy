#pragma once

#include "conf.hh"
#include <unordered_map>
#include <functional>

class abstract_user;

#include "view.hh"

using all_t     = std::unordered_map<user_id_t, abstract_user*>;

class abstract_user {
public:
	user_id_t id;
public:
	struct hash {
		constexpr std::size_t operator()(abstract_user const *u) const {
			return u->id;
		}
	};

	// --- Key equality (for unordered_set)
	struct key_eq {
		constexpr bool operator()(abstract_user const *a, abstract_user const *b) const {
			return a->id == b->id;
		}
	};

	constexpr explicit abstract_user(user_id_t id) : id{id} {}

	// TODO: use static polymorphism
	virtual void do_gossip() = 0; // TODO : remember to user "override" in subclasses. TODO convert to coroutine
	virtual void print_view() const {}
	virtual ~abstract_user() {}
};

#include "set_t.hh"
