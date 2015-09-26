#pragma once

#include "conf.hh"
#include "option.hh"
#include <set>
#include <vector>
#include <string>

using dataset_t = std::vector<std::set<item_id_t>>; // TODO: has to be an ordered set for set_intersection later

extern option<dataset_t> dataset; // TODO: avoid global state

dataset_t load_dataset(std::string path); // TODO: use c++17 file system path
