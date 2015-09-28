#pragma once

#include "abstract_user.hh"
#include <tuple>

class cyclon : public abstract_user
{
private:
	void add(user_id_t u);
	bool contains(user_id_t u) const;
	void remove(user_id_t u);

	user_id_t random_neighbor() const;
	user_id_t random_replace(user_id_t id);

	std::tuple<cyclon*, view_t> send_gossip(maybe<user_id_t> = none) const;
	void receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);

	void exchange_ids(cyclon &other);

	maybe<view_t::iterator>
	operator[](user_id_t u);

	maybe<view_t::const_iterator>
	operator[](user_id_t u) const;
protected:
	view_t view;
	all_t &all_peers;
public:

	explicit cyclon(user_id_t me, set_t &already_joined, all_t &all_peers);
	void print_view() const override;

	void do_gossip() override;
	virtual ~cyclon() {}
};
