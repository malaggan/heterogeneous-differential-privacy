#include "user.hh"
#include "range.tcc"
#include <cassert>
#include <typeinfo>
#include <iostream>
#include <algorithm>
#include <functional>
int main()
{
	// TODO check paper: Push-Pull Functional Reactive Programming - Conal Elliott
	set_t joined_peers;
	all_t all_peers;
	int last = 0;
	std::cout << "Initializing peers:";
	auto N = 481;
	for(auto i : range<std::vector, std::size_t>(N)) // TODO: use boost irange
	{
		auto peer = new user{i, joined_peers, all_peers};
		joined_peers.insert(peer);
		all_peers[i] = peer;
		int progress = (int)(100*i/(float)N);
		if(progress > last)
		{
			last = progress;
			std::cout << progress << "%" << ".." << std::flush;
		}
	}
	std::cout << "100%" << std::endl;

	last = 0;
	std::cout << "Simulating cycles:";
	for(auto i : range<std::vector, std::size_t>(cycles))
	{
		std::for_each(std::begin(joined_peers), std::end(joined_peers), std::mem_fn(&abstract_user::do_gossip));
		int progress = (int)(100*i/(float)N);
		if(progress > last)
		{
			last = progress;
			std::cout << progress << "%" << ".." << std::endl;
		}
	}
	std::cout << "100%" << std::endl;

	for(auto u : joined_peers)
	{
		auto a = dynamic_cast<vicinity<cyclon>*>(u);
		assert(a != nullptr);
		a->print_view();
	}
	return 0;
}
