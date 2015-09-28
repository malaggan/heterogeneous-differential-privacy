#pragma once

// view_t is basically a set, but when two ventries collide, the maximum age amonst them is taken.

#include "conf.hh"

#include "ventry.hh"
#include "random_sample.tcc"
#include <unordered_set>

using view_base = std::unordered_set<ventry,
                                     ventry::hash,
                                     ventry::key_eq>;

class view_t : public view_base
{
	using view_base::view_base; // import view_base's constructors

	// prevent anyone from calling base's mutating methods, so we can enforce our age-monotony policy
	using view_base::insert;
	using view_base::emplace;
	using view_base::emplace_hint;

public:
	using type = value_type; // so boost can treat (*this) as a range

	template<typename Range>
	view_t& clear_and_assign(Range const& range);

	iterator insert(value_type const& value);
	iterator insert(const_iterator, const value_type& value); // No need for `override' since this is static polymorphism, rather than dynamic.
	// insert(const_iterator, value_type&&) is ignored here, since we know
	// ventry does not need moving.

	maybe<iterator> try_update(const value_type& value);

	view_t& add                     (user_id_t u);
	view_t& remove                  (user_id_t u);
	bool contains                   (user_id_t u) const;

	maybe<iterator> get_by_id       (user_id_t u);
	maybe<const_iterator> get_by_id (user_id_t u) const;

	maybe<const_iterator> get_oldest_peer() const;

	auto random_element() const {
		return *random_sample<>{}(*this | ::helpers::map_ids, 1).begin();
	}
};

// TODO use boost::static_array (but with set semantics, if such a thing exists)

#include <boost/range/algorithm_ext/for_each.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <functional>

template<typename Range>
view_t& view_t::clear_and_assign(Range const& range) {
	clear();
	boost::for_each(range, std::bind(
		                static_cast<iterator(view_t::*)(value_type const&)>( &view_t::insert ),
		                this,
		                std::placeholders::_1));
	return *this;
}
