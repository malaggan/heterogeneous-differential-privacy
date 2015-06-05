#pragma once

#include "abstract_user.hpp"

class RPS : public virtual abstract_user
{
    view_t view;
public:
    explicit RPS(user_id_t me, std::unordered_set<RPS*> &already_joined); 

    user_id_t RandomNeighbor() const;

    user_id_t RandomReplace(user_id_t id);
    
    void printView() const override;

    view_t getView() override {return view;}
    const view_t getView() const override {return view;}

    void doGossip() override {}
    virtual ~RPS() {}
};
