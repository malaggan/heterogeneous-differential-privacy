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
