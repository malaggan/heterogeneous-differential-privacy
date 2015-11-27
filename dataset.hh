#pragma once

#include "conf.hh"
#include "abstract_user.hh"
#include <set>
#include <vector>
#include <string>

#include <unordered_map>
class user;
using all_t     = std::unordered_map<user_id_t, user*>; // change here must refelct in abstract_user.hh

user::set_t load_dataset(); // TODO: use c++17 file system path (filesystem.hh from the padding-oracle project)

struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };
