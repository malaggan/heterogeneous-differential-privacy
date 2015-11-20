// https://github.com/faithandbrave/Shand/blob/master/shand/static_map.hpp
// http://www.boost.org/doc/libs/1_57_0/doc/html/boost/container/flat_map.html

#include "user.hh"
#include <boost/range/counting_range.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <cassert>
#include <typeinfo>
#include <iostream>
#include <algorithm>
#include <functional>

namespace ba = boost::accumulators;

int main()
{
	// TODO check paper: Push-Pull Functional Reactive Programming - Conal Elliott
	set_t joined_peers;
	all_t all_peers;
	int last = 0;
	std::cout << "Initializing peers:";
	auto N = 481u;
	for(auto i : boost::counting_range(0u, N)) // TODO: use boost irange
	{
		auto peer = new user{i, joined_peers, all_peers};
		joined_peers.insert(peer);
		all_peers[i] = peer;
		int progress = static_cast<int>(100*i/static_cast<float>(N));
		if(progress > last)
		{
			last = progress;
			std::cout << progress << "%" << ".." << std::flush;
		}
	}
	std::cout << "100%" << std::endl;

	last = 0;
	std::cout << "Simulating cycles:" << std::endl;
	for(auto i : boost::counting_range(0u, cycles))
	{
		std::for_each(std::begin(joined_peers), std::end(joined_peers), std::mem_fn(&abstract_user::do_gossip));
		int progress = static_cast<int>(100*i/static_cast<float>(cycles));
		if(progress > last)
		{
			last = progress;
			std::cout << progress << "%" << ".." << std::flush;
		}
	}
	std::cout << "100%" << std::endl;

	ba::accumulator_set<float, ba::features<ba::tag::sum_kahan>> acc;

	for(auto u : joined_peers)
	{
	 auto a = dynamic_cast<vicinity*>(u);
	 assert(a != nullptr);
	 acc(a->recall());
	 // a->print_view();
	}
	std::cout << "average recall = " << ba::sum_kahan(acc) / joined_peers.size() << std::endl;
	return 0;
}
