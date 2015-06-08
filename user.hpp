#pragma once

#include "Cyclon.hpp"
#include "clust.hpp"

class user /*final*/ : public Clust<Cyclon>
{
public:
    explicit user(user_id_t me, set_t &already_joined, all_t &all_peers) : Clust{me, already_joined, all_peers}
    {}
    void doGossip() override {
	Cyclon::doGossip();
	Clust::doGossip();
    }

    virtual ~user() {}
};
