#pragma once

#include "abstract_user.hh"

template<typename RPS>
class vicinity : public RPS {  
public:
    view_t view;

    explicit vicinity(user_id_t me, set_t &already_joined, all_t &all_peers) : RPS{me, already_joined, all_peers} {}

    std::tuple<vicinity<RPS>*, view_t> send_gossip(std::experimental::optional<user_id_t> = std::experimental::nullopt) const;
    void receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);    
    void do_gossip() override;

    void print_view() const override;

    virtual ~vicinity() {}
};

// explicit instantiation declaration (to prevent automatic instantation)
#include "cyclon.hh"
extern template void vicinity<cyclon>::do_gossip();
