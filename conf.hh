#pragma once

// --- Conf params
constexpr auto viewSize = 10u;
constexpr auto cycles   = 20u;

// --- Ints
#include <cstdint>
using user_id_t         = uint_fast32_t;
using item_id_t         = uint_fast32_t;
using age_t             = uint_fast32_t;

// --- Option
#include "option.hh"

// --- User and user list
#include <unordered_map>
class user;
using all_t     = std::unordered_map<user_id_t, user*>; // change here must refelct in dataset.hh
extern all_t all_peers;
