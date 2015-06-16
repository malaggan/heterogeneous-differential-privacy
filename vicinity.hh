#pragma once

#include "abstract_user.hh"

template<typename RPS>
class vicinity : public RPS {  
public:
    view_t view;

    explicit vicinity(user_id_t me, set_t &already_joined, all_t &all_peers) : RPS{me, already_joined, all_peers} {}
    
    void do_gossip() override;

    virtual ~vicinity() {}
};

// explicit instantiation declaration (to prevent automatic instantation)
#include "cyclon.hh"
extern template void vicinity<cyclon>::do_gossip();
