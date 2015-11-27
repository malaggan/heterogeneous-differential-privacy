// https://github.com/faithandbrave/Shand/blob/master/shand/static_map.hpp
// http://www.boost.org/doc/libs/1_57_0/doc/html/boost/container/flat_map.html
#include "args.hh"
#include "dataset.hh"
#include "abstract_user.hh"
#include <boost/range/counting_range.hpp>
#include <boost/accumulators/statistics/sum.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <cassert>
#include <typeinfo>
#include <iostream>
#include <algorithm>
#include <functional>


all_t all_peers;

namespace ba = boost::accumulators;

uint32_t current_cycle = 0;
int main(int argc, char *argv[]) {
	parse_args(argc, argv);

	if(vm["private"].as<bool>())
		assert(vm.count("epsilon"));
	else
		assert(!vm.count("epsilon"));

	// for reproducibility
	if(vm.count("random-seed"))
		rng = std::default_random_engine{vm["random-seed"].as<uint32_t>()};

	// TODO check paper: Push-Pull Functional Reactive Programming - Conal Elliott
	// TODO: is search (recall) done also on RPS view??
	// TODO: implemen laplacian mechanism (check my sources for cc code for Ilya Mironov paper)

	std::cout << "Initializing peers:";
	auto joined_peers = load_dataset();


	std::cout << "Simulating cycles:" << std::endl;
	for(auto i : boost::counting_range(0u, cycles))
	{
		current_cycle++;
		boost::for_each(joined_peers, std::mem_fn(&user::vicinity_do_gossip));
	}
	std::cout << "100%" << std::endl;

	ba::accumulator_set<double, ba::features<ba::tag::sum_kahan>> acc;

	for(auto a : joined_peers)
	{
		auto recall = a->recall();
		std::cout << "recall("<<(a->id)<<") = " << recall << std::endl ;
		acc(recall);
	}
	std::cout << "average recall = " << (ba::sum_kahan(acc) / static_cast<double>(joined_peers.size())) << std::endl ;
	return 0;
}
