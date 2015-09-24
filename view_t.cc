#include "view_t.hh"

void view_t::add(user_id_t u) {
	// age is monotonic, thus it is guaranteed that the existing ventry
	// is older than or equal to 0. Therefore, we do not need to update
	// it if it exists.
	auto s = size();
	if(!contains(u)) {
		view_base::emplace(u, 0);
		assert(size() == s + 1);
	}else{
		auto p = get_by_id(u);
		assert(p);
		auto it = p.value();
		assert(it != end());
		assert(size() > 0);
	}
}

auto view_t::get_by_id(user_id_t u) -> option<iterator> {
	return gossple::find(*this, u); // NOTE: depends that equality for ventry is on ID
}

auto view_t::get_by_id(user_id_t u) const -> option<const_iterator> {
	return gossple::find(*this, u);
}

bool view_t::contains(user_id_t u) const {
	return static_cast<bool>(get_by_id(u));
}

void view_t::remove(user_id_t u) {
	get_by_id(u).bind([this](auto it){ view_base::erase(it); });
}

auto view_t::try_update(const value_type& value) -> option<iterator> {
	return get_by_id(value.id).bind<iterator>(
		[value](auto it) {
			return it->update_age(value), make_option<>(it);
		});
}

auto view_t::insert(const value_type& value) -> iterator {
	return try_update(value).value_or(view_base::insert(end(), value));
}

auto view_t::insert(const_iterator, const value_type& value) -> iterator {
	return insert(value);
}

#include <boost/range/algorithm/max_element.hpp>
auto view_t::get_oldest_peer() const -> const_iterator  {
	return boost::max_element(*this);
}
