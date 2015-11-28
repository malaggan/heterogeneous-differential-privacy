#pragma once
#include <boost/program_options.hpp>
namespace po = boost::program_options;
extern po::variables_map vm; // global, all code can access it to retreive options
extern void parse_args(int argc, char *argv[]);
