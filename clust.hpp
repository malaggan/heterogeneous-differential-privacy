#pragma once

#include "abstract_user.hpp"

template<typename RPS>
class Clust : public RPS {  
public:
    typename RPS::view_t view;

    explicit Clust(typename RPS::user_id_t me, typename RPS::set_t &already_joined, typename RPS::all_t &all_peers) : RPS{me, already_joined, all_peers} {}
    
    void doGossip() override {}   

    virtual ~Clust() {}
};
