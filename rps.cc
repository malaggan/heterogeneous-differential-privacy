#include "rps.hpp"

#include "RandomSample.tcc"
#include <boost/range/adaptor/map.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <iostream>
#include <iterator>
#include <cassert>
#include <iostream>
#include <iomanip>
RPS::RPS(user_id_t me, abstract_user::set_t &already_joined) 
    : abstract_user{me}, view{}
{	
    auto bootstrapPeers = RandomSample(already_joined, viewSize);
    // already_joined.insert(this); // do it from the main. here it does not work and fails to dynamic_cast.
    for(auto other : bootstrapPeers)
    {
	auto rps_other = dynamic_cast<RPS*>(other);
	assert(rps_other != nullptr);
	// if the other's RPS view is incomplete, swap selves:
	if(rps_other->view.size() < viewSize)
	{
	    view[rps_other->id] = 0; // 0 is the age
	    rps_other->view[id] = 0; 
	}
	else
	{   
	    auto removed = rps_other->RandomReplace(id);
	    if(view.find(removed) != std::end(view))
		view[rps_other->id] = 0;
	    else 
		view[removed] = 0;
	}
    }
}

auto RPS::RandomNeighbor() const -> user_id_t {
    return *RandomSample(view | boost::adaptors::map_keys, 1).begin();
}
#include <boost/function_output_iterator.hpp>
#include <boost/lambda/lambda.hpp>
void RPS::printView() const {
    using namespace boost::lambda;
    boost::copy(
	view | boost::adaptors::map_keys,
	//std::ostream_iterator<int>(std::cout, ",")
	boost::make_function_output_iterator( 
	    var(std::cout) << std::setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    std::cout << std::endl;
}

auto RPS::RandomReplace(user_id_t id) -> user_id_t {
    auto victim = RandomNeighbor();
    view.erase(victim);
    view[id] = 0;
    return victim;
}
