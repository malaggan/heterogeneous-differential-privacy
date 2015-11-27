// https://github.com/faithandbrave/Shand/blob/master/shand/static_map.hpp
// http://www.boost.org/doc/libs/1_57_0/doc/html/boost/container/flat_map.html
#include "args.hh"
#include "dataset.hh"
#include "abstract_user.hh"
#include "filesystem.hh"
#include "log.hh"
#include <boost/range/counting_range.hpp>
#include <boost/accumulators/statistics/sum.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <cassert>
#include <typeinfo>
#include <iostream>
#include <sstream>
#include <fstream>
#include <algorithm>
#include <functional>

// these must be public so as to no be destructed (and hence, closed),
// before the application termiantes.
namespace gossple {
	std::ofstream out, log;
	std::ifstream in;

	void redirect(std::string option_name, std::ofstream &fstream, std::ostream &outstream) {
		auto fname = vm[option_name].as<std::string>();
		fs::path output{fname};
		if(fs::exists(output))
		{
			if(vm["noclobber"].as<bool>()) {
				std::ostringstream cout;
				cout << "File \"" << fname << "\" already exists, but --noclobber has been set. "
					"Cannot produce output. Quitting..." << std::ends;
				logger{"redirect"}.log(cout.str());
				exit(1);
			}
			if(vm["append"].as<bool>())
				fstream = std::ofstream{fname, std::ios::app}; // append to file
			else
				fstream = std::ofstream{fname, std::ios::trunc}; // overwrite file
		} else {
			fstream = std::ofstream{fname}; // overwrite file
		}
		assert(fstream);
		outstream.rdbuf(fstream.rdbuf());
	}
}

all_t all_peers;
namespace ba = boost::accumulators;

uint32_t current_cycle = 0;
int main(int argc, char *argv[]) {
	parse_args(argc, argv);

	if(vm.count("output")) gossple::redirect("output", gossple::out, std::cout);
	if(vm.count("log"   )) gossple::redirect("log"   , gossple::log, std::clog);

	logger l{"main"};

	if(vm["private"].as<bool>())
	{
		assert(vm.count("epsilon"));
		// must have exactly one of the three
		assert(( vm["naive"].as<bool>() and !vm["groups"].as<bool>() and !vm.count("slices")) or
		       (!vm["naive"].as<bool>() and  vm["groups"].as<bool>() and !vm.count("slices")) or
		       (!vm["naive"].as<bool>() and !vm["groups"].as<bool>() and  vm.count("slices")));
	}
	else
		assert(!vm.count("epsilon") and !vm["naive"].as<bool>() and !vm["groups"].as<bool>() and !vm.count("slices"));

	// for reproducibility
	if(vm.count("random-seed"))
		rng = std::default_random_engine{vm["random-seed"].as<uint32_t>()};

	// TODO check paper: Push-Pull Functional Reactive Programming - Conal Elliott
	// TODO: is search (recall) done also on RPS view??

	l.log("Initializing peers");
	if(vm.count("dataset")) {
		auto fname = vm["dataset"].as<std::string>();
		if(fname != "-" /*stdin*/) {
			fs::path path{fname};
			if(!fs::exists(path)) {
				l.log("File \"%s\" does not exist. Cannot read dataset. Quitting...", fname.c_str());
				exit(1);
			}
			gossple::in = std::ifstream{fname};
			std::cin.rdbuf(gossple::in.rdbuf());

			l.log("Reading input dataset from \"%s\"", fname.c_str());
		} else
			l.log("Reading input dataset from stdin");
	} else
		l.log("Reading input dataset from stdin");
	auto joined_peers = load_dataset();

	l.log("Simulating cycles");
	for(auto i : boost::counting_range(0u, cycles))
	{
		current_cycle++;
		boost::for_each(joined_peers, std::mem_fn(&user::vicinity_do_gossip));
	}
	l.log("All cycles finished");

	ba::accumulator_set<double, ba::features<ba::tag::sum_kahan>> acc;

	for(auto a : joined_peers)
	{
		auto recall = a->recall();
		l.log("recall(%d) = %f", a->id, recall);
		acc(recall);
	}

	std::cout << (ba::sum_kahan(acc) / static_cast<double>(joined_peers.size())) << std::endl ;
	return 0;
}
