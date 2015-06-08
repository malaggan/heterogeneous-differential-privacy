#pragma once

#include "abstract_user.hpp"

class Cyclon : public abstract_user
{
public:
    using all_t = std::unordered_map<view_t::key_type, abstract_user*>;
    view_t view;
    all_t &all_peers;

    explicit Cyclon(user_id_t me, set_t &already_joined, all_t &all_peers); 

    user_id_t RandomNeighbor() const;

    user_id_t RandomReplace(user_id_t id);
    
    void printView() const override;

    void doGossip() override;
    virtual ~Cyclon() {}
};
