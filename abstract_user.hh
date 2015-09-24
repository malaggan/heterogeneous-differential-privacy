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

using set_t     = std::unordered_set<abstract_user*>; // [1]
using all_t     = std::unordered_map<user_id_t, abstract_user*>;

class abstract_user {
public:
	user_id_t id;
	explicit abstract_user(user_id_t id) : id{id} {}

	virtual void do_gossip() = 0; // TODO : remember to user "override" in subclasses
	virtual void print_view() const {}
	virtual ~abstract_user() {}
};

// [1] I could have used
// std::unordered_set<std::shared_ptr<abstract_user>>. I do not
// because I need to add to this container during construction. The
// problem is that I would need to inherit from
// std::enable_shared_from_this<abstract_user>, and then call
// shared_from_this(). However, it cannot be called during
// construction, otherwise bad_weak_ptr is thrown.
