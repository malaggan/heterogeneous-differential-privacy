#pragma once

#include "vicinity.hh"
#include <iostream>
class user : public vicinity
{
public:
	explicit user(user_id_t me, set_t &already_joined, all_t &all_peers) : vicinity{me, already_joined, all_peers}
		{}

	void do_gossip() override {
		vicinity::do_gossip();
	}

	virtual ~user() {}
};
