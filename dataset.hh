#pragma once

#include "conf.hh"
#include "abstract_user.hh"
#include <set>
#include <vector>
#include <string>

//using dataset_t = std::vector<std::vector<item_id_t>>;

//extern maybe<dataset_t> dataset; // TODO: avoid global state

#include <unordered_map>
class user;
using all_t     = std::unordered_map<user_id_t, user*>; // change here must refelct in abstract_user.hh

user::set_t load_dataset(); // TODO: use c++17 file system path

struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };
