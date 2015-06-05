#pragma once

#include "rps.hpp"
#include "clust.hpp"

class user /*final*/ : public RPS, public Clust
{
public:
    explicit user(user_id_t me, std::unordered_set<RPS*> &already_joined) : abstract_user{me}, RPS{me, already_joined}, Clust{me}
    {}
    void doGossip() override {
	RPS::doGossip();
	Clust::doGossip();
    }

    view_t getView() override {return RPS::getView();}
    const view_t getView() const override {return RPS::getView();}
    virtual ~user() {}
};
