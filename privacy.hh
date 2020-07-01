#pragma once
#include "conf.hh"
#include "ventry.hh"
#include "abstract_user.hh"

double similarity(ventry &a, ventry &b);
double similarity(user &a, user &b);
double similarity(user &a, ventry &b);
bool   more_similar(user &reference, ventry &a, ventry &b);
bool   less_similar(user &reference, ventry &a, ventry &b);

#include <functional>
struct semantic_comp : public std::function<bool(ventry &, ventry &)> {
    user *ref;
    /*explicit*/ semantic_comp(user *ref) : ref{ref} {}
    bool operator()(ventry &a, ventry &b) {
        return less_similar(*ref, a, b);
    }
};
