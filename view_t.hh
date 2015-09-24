#pragma once

#include "conf.hh"
#include "ventry_t.hh"
#include <unordered_set>

using view_base = std::unordered_set<ventry_t, ventry_t::hash, ventry_t::key_eq>;

// When two ventry_t's collide in a set, the maximum age should be
// taken.
class view_t : public view_base
{
	using view_base::view_base; // import view_base's constructors
	// restrict adding to insert() only:
private: using view_base::emplace; // delete emplace
private: using view_base::emplace_hint; // delete emplace_hint

public:
	void add								(user_id_t u);
	option<view_base::iterator> get_by_id		(user_id_t u);
	option<view_base::const_iterator> get_by_id	(user_id_t u) const;
	bool contains							(user_id_t u) const;
	void remove								(user_id_t u);
};

// TODO use boost::static_array (but with set semantics, if
// such a thing exists)
