#include "user.hh"
#include "range.tcc"
#include <cassert>
#include <typeinfo>
#include <iostream>
int mainf()
{
    set_t joined_peers;
    all_t all_peers;
    for(auto i : range<std::vector, std::size_t>(500))
    {
	auto peer = new user{i, joined_peers, all_peers};
	joined_peers.insert(peer);
	all_peers[i] = peer;
    }
    for(auto u : joined_peers)
    {
	auto a = dynamic_cast<cyclon*>(u);
	assert(a != nullptr);
	a->print_view();
    }
    return 0;
}

