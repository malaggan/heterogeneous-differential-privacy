#pragma once

#include "conf.hh"
#include "option.hh"
#include <set>
#include <vector>
#include <string>

using dataset_t = std::vector<std::vector<item_id_t>>;

extern option<dataset_t> dataset; // TODO: avoid global state

dataset_t load_dataset(std::string path); // TODO: use c++17 file system path
