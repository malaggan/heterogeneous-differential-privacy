#pragma once

#include "rps.hpp"
#include "clust.hpp"

class user /*final*/ : public Clust<RPS>
{
public:
    explicit user(user_id_t me, abstract_user::set_t &already_joined) : Clust{me, already_joined}
    {}
    void doGossip() override {
	RPS::doGossip();
	Clust::doGossip();
    }

    virtual ~user() {}
};
