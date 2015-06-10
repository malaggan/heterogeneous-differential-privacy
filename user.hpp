#pragma once

#include "Cyclon.hpp"
#include "clust.hpp"

class user /*final*/ : public clust<cyclon>
{
public:
    explicit user(user_id_t me, set_t &already_joined, all_t &all_peers) : clust{me, already_joined, all_peers}
    {}
    void do_gossip() override {
	cyclon::do_gossip();
	clust::do_gossip();
    }

    virtual ~user() {}
};
