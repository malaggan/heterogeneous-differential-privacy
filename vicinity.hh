#pragma once

#include "abstract_user.hh"

template<typename RPS>
class vicinity : public RPS {  
public:
    typename RPS::view_t view;

    explicit vicinity(typename RPS::user_id_t me, typename RPS::set_t &already_joined, typename RPS::all_t &all_peers) : RPS{me, already_joined, all_peers} {}
    
    void do_gossip() override;

    virtual ~vicinity() {}
};
