#pragma once

#include "conf.hh"
#include "abstract_user.hh"
#include <set>
#include <vector>
#include <string>

#include <unordered_map>

user::set_t load_dataset();

struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };
