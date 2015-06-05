#include "user.hpp"
#include "Range.tcc"
#include <cassert>
int main()
{
    abstract_user::set_t joined_peers;
    for(auto i : Range<std::vector, std::size_t>(500))
	new user{i, joined_peers};
    for(auto const& user : joined_peers)
    {	
	auto a = dynamic_cast<RPS*>(user);
	assert(a != nullptr);
	a->printView();
    }
    return 0;
}

