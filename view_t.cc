#include "view_t.hh"
#include <boost/range/algorithm/find.hpp>

void view_t::add(user_id_t u) {
	view_base::emplace(u, 0); // TODO check duplication and update age if so
}

option<view_base::iterator> view_t::get_by_id(user_id_t u) {
	return boost::find(*this, u); // NOTE: depends that equality for ventry is on ID
}

option<view_base::const_iterator> view_t::get_by_id(user_id_t u) const {
	return boost::find(*this, u);
}

bool view_t::contains(user_id_t u) const {
	return static_cast<bool>(get_by_id(u));
}

void view_t::remove(user_id_t u) {
	auto p = get_by_id(u);
	if(p)
		view_base::erase(p.value());
}
