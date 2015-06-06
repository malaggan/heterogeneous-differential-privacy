#pragma once

#include "rps.hpp"
#include "clust.hpp"

class user /*final*/ : public Clust<RPS>
{
public:
    explicit user(user_id_t me, set_t &already_joined, all_t &all_peers) : Clust{me, already_joined, all_peers}
    {}
    void doGossip() override {
	RPS::doGossip();
	Clust::doGossip();
    }

    virtual ~user() {}
};
