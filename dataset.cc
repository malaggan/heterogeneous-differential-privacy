#include "option.hh"
#include "args.hh"
#include "dataset.hh"
#include "abstract_user.hh"
#include "random.hh"
#include <boost/range/istream_range.hpp>
#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>
// http://stackoverflow.com/a/16546151/397405

extern all_t all_peers;

std::istream& operator>>(std::istream& in, item& p) { in >> p.first; in >> p.second; return in; }

// keep track of which items are used by at most one user, so they are never used in the test set
std::unordered_set<item_id_t> used_more_than_once;

// this function is called exactly once
static auto read_group_ratios() {
	// assert exactly one is missing
	double unconcerned, normal, concerned;
	assert((!vm.count("unconcerned") and  vm.count("normal") and  vm.count("concerned")) or
	       ( vm.count("unconcerned") and !vm.count("normal") and  vm.count("concerned")) or
	       ( vm.count("unconcerned") and  vm.count("normal") and !vm.count("concerned")));
	// read the other two and infer this
#define read2(a,b,c) if(!vm.count(#a)) { \
		assert(vm.count(#b)); \
		b = vm[#b].as<double>(); \
		assert(0.0 <= b and b <= 1.0); \
		assert(vm.count(#c)); \
		c = vm[#c].as<double>(); \
		assert(0.0 <= c and c <= 1.0); \
		a = 1 - b - c; \
	}
	read2(concerned, normal, unconcerned);
	read2(concerned, unconcerned, normal);
	read2(unconcerned, normal, concerned);
#undef read2
	return std::make_tuple(unconcerned, normal, concerned);
}

static user::privacy_class random_privacy_class() {
	// read class probabilities
	static bool is_initialized = false;
	static double unconcerned, normal, concerned;
	if(!is_initialized) {
		std::tie(unconcerned, normal, concerned) = read_group_ratios();
		is_initialized = true;
	}

	if(std::bernoulli_distribution{concerned}(rng))
		return user::privacy_class::CONCERNED;
	if(std::bernoulli_distribution{normal}(rng))
		return user::privacy_class::NORMAL;

	return user::privacy_class::UNCONCERNED;
}

static maybe<user*> create_user(user_id_t id, user::set_t joined_peers) {
	// create a new user, only if he is not to be thrown away (naive).
	// if so, ignore all his entries
	if(vm["private"].as<bool>() and
	   (vm["naive"].as<bool>() or vm["groups"].as<bool>())) {
		auto cls = random_privacy_class();
		// in naive experiment, we throw away all concerned peers
		if(vm["naive"].as<bool>() and cls == user::privacy_class::CONCERNED)
			return none;

		// in naive experiment, after we throw away the fussy, everyone
		// else is treated homogenously, taking into account the
		// strictist privacy guarantee (weights should be fixed to 0.5
		// in that case)
		if(vm["naive"].as<bool>())
			cls = user::privacy_class::NORMAL_HOMOGENEOUS;

		return some(new user{id, joined_peers, all_peers, cls});
	}

	// baseline or private--slices:
	return some(new user{id, joined_peers, all_peers, user::privacy_class::NONE});
}

user::set_t load_dataset()
{
	using namespace std;
	using namespace std::placeholders;
	string path = vm["dataset"].as<string>();
	auto f = ifstream{ path };
	assert(f);
	string signature;
	f >> signature;
	assert(signature == "dims");
	uint_fast32_t user_count, item_count;
	f >> user_count >> item_count;

	user_id_t current_id = 0;
	user_id_t ignore_id = 0;
	std::unordered_set<item_id_t> seen;
	user::set_t joined_peers;

	for_each(boost::istream_range<item>(f),
	         [&seen, &joined_peers, &current_id, &ignore_id]
	         (item const& it) {
		         auto id = it.first; // starts from 1
		         if(ignore_id == id)
			         return;
		         auto item = it.second;

		         if(id > current_id) {
			         auto u = create_user(current_id++, joined_peers);
			         if(u == none) {
				         ignore_id = id; // skip all entries of this user
				         --current_id; // note: `id' (the one read from the file) is no longer valid here. we depend on our incremental id counter.
				         return;
			         }

			         joined_peers.insert(u.value());
			         all_peers[current_id - 1] = u.value();

		         }
		         if(seen.count(item))
			         used_more_than_once.insert(item);
		         else
			         seen.insert(item);
		         all_peers[current_id - 1]->add_item(item);
	         });
	return joined_peers;
}
