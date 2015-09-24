#include "abstract_user.hh"

bool std::equal_to<abstract_user*>::operator()(const abstract_user* a, const abstract_user* b) const
{
    return a->id == b->id;
}

#include <algorithm>
using std::find_if;
namespace helpers {
    void add(
	view_t    &view,
	user_id_t u) {
	view.emplace(u, 0);
    }
    std::experimental::optional<view_t::iterator> get_by_id(
	view_t    &view,
	user_id_t u) {
	auto p = find_if(begin(view), end(view), [u](auto const &a){return a.id==u;});
	return p == end(view) ? std::experimental::nullopt : std::experimental::make_optional(p);
    }
    std::experimental::optional<view_t::const_iterator> get_by_id(
	view_t const    &view,
	user_id_t       u) {
	auto p = find_if(cbegin(view), cend(view), [u](auto const &a){return a.id==u;});
	return p == cend(view) ? std::experimental::nullopt : std::experimental::make_optional(p);
    }
    bool contains(
	view_t const    &view,
	user_id_t       u) {
	return static_cast<bool>(get_by_id(view, u));
    }
    void remove(
	view_t    &view,
	user_id_t u) {
	auto p = get_by_id(view, u);
	if(p)
	    view.erase(p.value());
    }
}
