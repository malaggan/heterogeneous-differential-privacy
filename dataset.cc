#include "dataset.hh"

#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>

option<dataset_t> dataset{nullopt};

// http://stackoverflow.com/a/16546151/397405
struct item : public std::pair<user_id_t, item_id_t> { using std::pair<user_id_t, item_id_t>::pair; };
std::istream& operator>>(std::istream& in, item& p) { in >> p.first; in >> p.second; return in; }

dataset_t load_dataset(std::string path)
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

	using entry_t = set<uint_fast32_t>;
	using list_t = vector<entry_t>;
	list_t data(user_count);

	for_each(istream_iterator<item>(f), istream_iterator<item>(), // TODO: use boost istream_range
	         // bind(
	         //    static_cast<pair<entry_t::iterator,bool> (entry_t::*) (const entry_t::value_type& )>(&entry_t::insert),
	         //    bind(static_cast<list_t::reference (list_t::*)(list_t::size_type)>(&list_t::at), ref(data), bind(minus<void>(),bind(&item::first,_1),1)),
	         //    bind(&item::second,_1)));
	         [&data](item const& item) {
		         data[item.first - 1].insert(item.second);
	         });

	return data;
}
