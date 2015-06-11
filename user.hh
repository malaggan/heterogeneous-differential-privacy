#pragma once

#include "cyclon.hh"
#include "vicinity.hh"

class user /*final*/ : public vicinity<cyclon>
{
public:
    explicit user(user_id_t me, set_t &already_joined, all_t &all_peers) : vicinity{me, already_joined, all_peers}
    {}
    void do_gossip() override {
	cyclon::do_gossip();
	vicinity::do_gossip();
    }

    virtual ~user() {}
};
