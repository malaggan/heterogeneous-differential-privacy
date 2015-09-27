#pragma once

#include "conf.hh"
#include "ventry.hh"
#include "random_sample.tcc"
#include <unordered_set>

using view_base = std::unordered_set<ventry_t, ventry_t::hash, ventry_t::key_eq>;

// When two ventry_t's collide in a set, the maximum age should be
// taken.
class view_t : public view_base
{
	using view_base::view_base; // import view_base's constructors
	// restrict adding to insert() only:
private: using view_base::insert; // delete insert (temporarily, to see where it is called)
private: using view_base::emplace; // delete emplace
private: using view_base::emplace_hint; // delete emplace_hint

public:
	using type = value_type; // so boost can treat (*this) as a range

	template<typename Range>
	view_t& clear_and_assign(Range const& range) {
		clear();
		for(auto const& v : range)
			insert(v); // delegate try_update to `insert'
		// Would have preferred to use:
		// insert(std::begin(range), std::end(range));
		// but have to figure out a clean way to do try_update on each (using the `option' Monad).
		return *this;
	}

	iterator insert(const value_type& value);
	iterator insert(const_iterator, const value_type& value); // No need for `override' since this is static polymorphism, rather than dynamic.
	// insert(const_iterator, value_type&&) ignored here, since we know
	// ventry_t does need moving.

	option<iterator> try_update(const value_type& value);

	view_t& add                      (user_id_t u);
	option<iterator> get_by_id       (user_id_t u);
	option<const_iterator> get_by_id (user_id_t u) const;
	bool contains                    (user_id_t u) const;
	view_t& remove                   (user_id_t u);

	option<const_iterator> get_oldest_peer() const;

	auto random_element() const {
		return *random_sample<>{}(*this | ::helpers::map_ids, 1).begin();
	}
};

// TODO use boost::static_array (but with set semantics, if
// such a thing exists)
