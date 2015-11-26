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

	// for reproducibility
	if(vm.count("random-seed"))
		rng = std::default_random_engine{vm["random-seed"].as<uint32_t>()};

	// TODO check paper: Push-Pull Functional Reactive Programming - Conal Elliott
	// TODO: is search (recall) done also on RPS view??
	// TODO: implemen laplacian mechanism (check my sources for cc code for Ilya Mironov paper)
	user::set_t joined_peers;

	int last = 0;
	std::cout << "Initializing peers:";
	auto N = dataset_get_num_users();
	for(auto i : boost::counting_range(0ul, N))
	{
		auto peer = new user{i, joined_peers, all_peers};
		joined_peers.insert(peer);
		all_peers[i] = peer; // TODO remove this redundency
		int progress = static_cast<int>(100*i/static_cast<float>(N));
		if(progress > last)
		{
			last = progress;
			std::cout << progress << "%" << ".." << std::flush;
		}
	}
	std::cout << "100%" << std::endl;
	load_dataset(all_peers);

	last = 0;
	std::cout << "Simulating cycles:" << std::endl;
	for(auto i : boost::counting_range(0u, cycles))
	{
		current_cycle++;
		// ba::accumulator_set<float, ba::features<ba::tag::sum_kahan>> acc;
		// for(auto u : joined_peers)
		// {
		//		auto a = dynamic_cast<vicinity*>(u);
		//		assert(a != nullptr);
		//		acc(a->recall());
		//		//a->print_view();
		// }
		// std::cout << "average recall = " << ba::sum_kahan(acc) / joined_peers.size() << std::endl;

		boost::for_each(joined_peers, std::mem_fn(&user::vicinity_do_gossip));
		// int progress = static_cast<int>(100*i/static_cast<float>(cycles));
		// if(progress > last)
		// {
		//	last = progress;
		//	std::cout << progress << "%" << ".." << std::flush;
		// }
	}
	std::cout << "100%" << std::endl;

	ba::accumulator_set<rational, ba::features<ba::tag::sum>> acc;
	ba::accumulator_set<double, ba::features<ba::tag::sum_kahan>> acc2;

	for(auto a : joined_peers)
	{
		auto recall = a->recall();
		std::cout << "recall("<<(a->id)<<") = " << boost::rational_cast<float>(recall) << std::endl ;
		acc(recall);
		acc2(boost::rational_cast<double>(recall));
		//a->print_view();
	}
	std::cout << "average recall (rational) = " << boost::rational_cast<float>( ba::sum(acc) / rational{joined_peers.size()}) << std::endl ;
	std::cout << "average recall = " << (ba::sum_kahan(acc2) / joined_peers.size()) << std::endl ;
	return 0;
}
