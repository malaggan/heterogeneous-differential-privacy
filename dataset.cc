#include "dataset.hh"
#include "abstract_user.hh"
#include <boost/range/istream_range.hpp>
#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>
// http://stackoverflow.com/a/16546151/397405

std::istream& operator>>(std::istream& in, item& p) { in >> p.first; in >> p.second; return in; }

size_t dataset_get_num_users(std::string path)
{
	auto f = std::ifstream{ path };
	assert(f);
	std::string signature;
	f >> signature;
	assert(signature == "dims");
	size_t user_count;
	f >> user_count;
	return user_count;
}

// keep track of which items are used by at most one user, so they are never used in the test set
std::unordered_set<item_id_t> used_more_than_once;

void load_dataset(std::string path, all_t & all_peers)
{
	using namespace std;
	using namespace std::placeholders;
	auto f = ifstream{ path };
	assert(f);
	string signature;
	f >> signature;
	assert(signature == "dims");
	uint_fast32_t user_count, item_count;
	f >> user_count >> item_count;

	std::unordered_set<item_id_t> seen;
	for_each(boost::istream_range<item>(f),
	         [&all_peers, &seen]
	         (item const& item) {
		         if(seen.count(item.second))
			         used_more_than_once.insert(item.second);
		         else
			         seen.insert(item.second);
		         assert(item.first <= all_peers.size());
		         all_peers[item.first - 1]->add_item(item.second);
	         });
}
