#pragma once

#include "abstract_user.hpp"
#include <experimental/optional>
#include <tuple>

class cyclon : public abstract_user
{
public:
    using all_t = std::unordered_map<abstract_user::user_id_t, abstract_user*>;
    view_t view;
    all_t &all_peers;

    explicit cyclon(user_id_t me, set_t &already_joined, all_t &all_peers); 

    void add(user_id_t u);
    bool contains(user_id_t u) const;
    void remove(user_id_t u);
    
    user_id_t random_neighbor() const;
    user_id_t random_replace(user_id_t id);

    std::tuple<cyclon*, view_t> send_gossip(std::experimental::optional<user_id_t> = std::experimental::nullopt) const;
    void receive_gossip(cyclon const *from, view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);

    void exchange_ids(cyclon &other);

    std::experimental::optional<view_t::iterator>
    operator[](user_id_t u);

    std::experimental::optional<view_t::const_iterator>
    operator[](user_id_t u) const;
    
    void print_view() const override;

    void do_gossip() override;
    virtual ~cyclon() {}
};
