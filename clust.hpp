#pragma once

#include "abstract_user.hpp"

class Clust : virtual public abstract_user {  
    view_t view;
public:
    explicit Clust(user_id_t me) : abstract_user{me} {}
    
    void doGossip() override {}

    view_t getView() override {return view;}
    const view_t getView() const override {return view;}

    virtual ~Clust() {}
};
