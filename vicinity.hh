#pragma once
#include "cyclon.hh"

class vicinity : public cyclon {
private:
	std::tuple<vicinity*, view_t> send_gossip(maybe<user_id_t> = none) const;
	void receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);

protected:
	view_t view;

public:

	explicit vicinity(user_id_t me, set_t &already_joined, all_t &all_peers) : cyclon{me, already_joined, all_peers} {}

	void do_gossip() override;

	void print_view() const override;

	rational recall() const;

	virtual ~vicinity() {}
};
