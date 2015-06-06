#pragma once

#include "abstract_user.hpp"

class RPS : public abstract_user
{
public:
    view_t view;

    explicit RPS(user_id_t me, std::unordered_set<abstract_user*> &already_joined); 

    user_id_t RandomNeighbor() const;

    user_id_t RandomReplace(user_id_t id);
    
    void printView() const override;

    void doGossip() override {}
    virtual ~RPS() {}
};
