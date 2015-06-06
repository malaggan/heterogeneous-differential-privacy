#include "user.hpp"
#include "Range.tcc"
#include <cassert>
#include <typeinfo>
#include <iostream>
int main()
{
    abstract_user::set_t joined_peers;
    RPS::all_t all_peers;
    for(auto i : Range<std::vector, std::size_t>(500))
    {
	auto peer = new user{i, joined_peers, all_peers};
	joined_peers.insert(peer);
	all_peers[i] = peer;
    }
    for(auto u : joined_peers)
    {
	auto a = dynamic_cast<RPS*>(u);
	assert(a != nullptr);
	a->printView();
    }
    return 0;
}

