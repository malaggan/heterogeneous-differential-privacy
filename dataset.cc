#include "option.hh"
#include "args.hh"
#include "dataset.hh"
#include "abstract_user.hh"
#include "random.hh"
#include "log.hh"
#include <boost/range/istream_range.hpp>
#include <fstream>
#include <iostream>
#include <cassert>
#include <functional>
// http://stackoverflow.com/a/16546151/397405

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
		static logger l{"read_group_ratios"};
#define read2(a,b,c) if(!vm.count(#a)) { \
		assert(vm.count(#b)); \
		b = vm[#b].as<double>(); \
		assert(0.0 <= b and b <= 1.0); \
		assert(vm.count(#c)); \
		c = vm[#c].as<double>(); \
		assert(0.0 <= c and c <= 1.0); \
		if(b + c > 1.0) { \
			l.log(std::string{"Groups total exceed 100%, ignoring this configuration"}); \
			exit(0); \
		} \
		a = 1 - b - c; \
	}
	read2(concerned, normal, unconcerned);
	read2(concerned, unconcerned, normal);
	read2(unconcerned, normal, concerned);
#undef read2
	return std::make_tuple(unconcerned, normal, concerned);
}

double unconcerned{}, normal{}, concerned{};
static user::privacy_class random_privacy_class() {
	// read class probabilities
	static bool is_initialized = false;
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
	if(vm["blind"].as<bool>()) {
		assert(vm["private"].as<bool>());
		assert(!vm["naive"].as<bool>());
		assert(!vm["groups"].as<bool>());
		assert(!vm.count("slices"));
		return some(new user{id, joined_peers, user::privacy_class::BLIND});
	}

	if(vm["private"].as<bool>() and
	   (vm["naive"].as<bool>() or vm["groups"].as<bool>())) {
		auto cls = random_privacy_class();
		// in naive experiment, we throw away all concerned peers
		if(vm["naive"].as<bool>() and cls == user::privacy_class::CONCERNED) {
			if(vm.count("alpha")) { // throw only with probability alpha
				auto alpha = vm["alpha"].as<double>();
				assert(0.0 <= alpha and alpha <= 1.0);
				if(std::bernoulli_distribution{alpha}(rng))
					return none;
				else
					return some(new user{id, joined_peers, user::privacy_class::NAIVE /* not CONCERNED as should be, because this is homogeneous privacy, not hetegeneous. */});
			} else {
				return none;
			}
		}

		// in naive experiment, after we throw away the fussy, everyone
		// else is treated homogenously, taking into account the
		// strictist privacy guarantee (weights should be fixed to 0.5
		// in that case)
		if(vm["naive"].as<bool>())
			cls = user::privacy_class::NAIVE;

		return some(new user{id, joined_peers, cls});
	}

	// baseline or slices:
	if(vm["private"].as<bool>()) {
		assert(vm.count("slices"));
		return some(new user{id, joined_peers, user::privacy_class::SLICES});
	}
	return some(new user{id, joined_peers, user::privacy_class::BASELINE});
}

user::set_t load_dataset()
{
	using namespace std;
	using namespace std::placeholders;
	string signature;
	std::cin >> signature;
	assert(signature == "dims");
	uint_fast32_t user_count, item_count;
	std::cin >> user_count >> item_count;

	user_id_t current_id = 0, currently_reading_id = 0;
	user_id_t ignore_id = 0;
	std::unordered_set<item_id_t> seen;
	user::set_t joined_peers;
	static logger l{"load_dataset"};
	uint64_t j = 0;
	for(auto &it : boost::istream_range<item>(std::cin)) {
		l.progress(j, user_count, (j%50) == 0);

		auto id = it.first; // starts from 1
		if(ignore_id == id)
			continue;

		if(id > currently_reading_id) {
			currently_reading_id = id;
			// throw away random 10% of users
			if(std::bernoulli_distribution{0.1}(rng) and not vm["all-peers"].as<bool>()){
					ignore_id = id;
					continue;
			}
			auto u = create_user(current_id, joined_peers);
			if(u == none) {
				// skip all entries of this user
				ignore_id = id;
// note: `id' (the one read from the file) is no longer valid here. we depend on our incremental id counter. Important: by doing this, users with zero items are automatically not included, and this may cause two problems: 1) even in non-naive experiments there maybe a discrepency between the user id in the file and the user id in the program's memory, and 2) there maybe a discrepency between the declared number of users in the file and the actually loaded number.
				continue;
			} else { ++j; current_id++; }
			joined_peers.insert(u.value());
		}

		auto item = it.second;

		if(seen.count(item))
			used_more_than_once.insert(item);
		else
			seen.insert(item);
		all_peers[current_id - 1]->add_item(item);
	}
	assert(joined_peers.size() == all_peers.size());
	l.log("Effectively loaded %lu peers out of %lu total", all_peers.size(), user_count);
	l.log("Loading finished");
	return joined_peers;
}
