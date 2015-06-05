#include "user.hpp"
#include "Range.tcc"
#include <cassert>
#include <typeinfo>
#include <iostream>
int main()
{
    abstract_user::set_t joined_peers;
    for(auto i : Range<std::vector, std::size_t>(500))
	joined_peers.insert(new user{i, joined_peers});
    for(auto u : joined_peers)
    {
	auto a = dynamic_cast<RPS*>(u);
	assert(a != nullptr);
	a->printView();
    }
    return 0;
}

