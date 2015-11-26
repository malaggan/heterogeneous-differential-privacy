#pragma once

#include "conf.hh"
#include <unordered_map>
#include <unordered_set>
#include <set>
#include <tuple>

// TODO these file lines to be moved to .cc
#include <boost/accumulators/statistics/sum.hpp>
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/range/algorithm_ext/for_each.hpp>
#include <boost/accumulators/accumulators.hpp>
namespace ba = boost::accumulators;

#include "random_sample.tcc"
#include "view.hh"

class user;
using all_t     = std::unordered_map<user_id_t, user*>; // change here must refelct in dataset.hh

class user final {
public:
	user_id_t																 id;
	view_t																	 cyclon_view;
	all_t																		 &all_peers;
	view_t																	 vicinity_view;
	std::set<item_id_t>											 items; // has to be sorted to enable set_intersection algorithms
	std::unordered_map<item_id_t,rational>   privacy_weights; // user's privacy preference of all items XXX currently working on this: moving global privacy.cc stuff
	std::unordered_map<user_id_t,rational>   similarities; // only contains key < this->id.
public:
	struct hash   { constexpr std::size_t operator()(user const *u) const { return u->id; }};
	struct key_eq { constexpr bool        operator()(user const *a, user const *b) const { return a->id == b->id; }};

	using set_base = std::unordered_set<user*,user::hash,user::key_eq>; /* [1] */
	class set_t : public set_base
	{
			using set_base::set_base; // inherit constructors
	public:
			auto random_subset(size_t size) const {
					return random_sample<>{}(*this, size);
			}
	};

  explicit user(user_id_t me, set_t &already_joined, all_t &all_peers);
  // privacy stuff
  void add_item(item_id_t i) { items.insert(i);  };
	template <typename Distribution>
	void generate_weights(Distribution /*pc*/) {
			assert(privacy_weights.empty());
			// TODO: try to use generate_n since it is parallelizable using std::parallel gnu extension
			for(item_id_t const & item : items)
					privacy_weights[item] = rational{1}; //pc(rng); XXX for debugging: no privacy groups TODO we need rational-from-double here
	}

	enum class privacy_class : uint8_t { CONCERNED = 0, NORMAL = 1, UNCONCERNED = 2 };
	static privacy_class random_privacy_class () {
			switch (std::uniform_int_distribution<uint8_t>{0,2}(rng)) {
			case 0: return privacy_class::CONCERNED;
			case 1: return privacy_class::NORMAL;
			case 2: return privacy_class::UNCONCERNED;
			default : assert(false);
			}
			assert(false);
	}

	static std::pair<rational, rational> pc_limits(privacy_class pc) {
			switch(pc) {
			case privacy_class::CONCERNED:      return std::make_pair(rational{0}, rational{1});
			case privacy_class::NORMAL:         return std::make_pair(rational{1,2}, rational{1});
			case privacy_class::UNCONCERNED:    return std::make_pair(rational{9,10}, rational{1});
			default: assert(false);
			}
			assert(false);
	}

	std::vector<rational> weights_of(std::vector<item_id_t> const & subset) {
			if(privacy_weights.empty()) {
					rational min, max;
					std::tie(min, max) = pc_limits(random_privacy_class());
					assert(0 <= min && min <= 1);
					assert(0 <= max && max <= 1);
					generate_weights(std::uniform_real_distribution<float>{boost::rational_cast<float>(min), boost::rational_cast<float>(max)});
			}

			// return only the weigts for items in the `subset'
			//
			// set<item_id_t> (sorted): 3   76  195 344
			// subset                 : 3   -   195 -
			// privacy_weights(vector): 0.5 1.0 0.3 0.24
			// return value           : 0.5     0.3 (in that order)
			// for every subset item, find index in set, append privacy_weight at that index// a map would be better
			std::vector<rational> v;
			for(auto const &subset_item : subset)
					v.push_back(privacy_weights[subset_item]);
			return v;
	}

	rational cached_similarity(user_id_t other) {
			// make sure that the pair<2,3> and pair<3,2> are the same by always putting the /larger/ id last
			if(this->id > other)
					return all_peers[other]->cached_similarity(this->id);

			// TODO uncomment this. it was only commented for sanity check.
			// if(similarities.count(id))
			//	return similarities[id];

			std::vector<item_id_t> intersection;
			boost::set_intersection(items, all_peers[other]->items, std::back_inserter<>(intersection));

			ba::accumulator_set<rational, ba::features<ba::tag::sum>> acc;

			boost::range::for_each(weights_of(intersection),
														 all_peers[other]->weights_of(intersection),
														 std::bind(std::ref(acc),
																			 std::bind(std::multiplies<rational>(),
																								 std::placeholders::_1,
																								 std::placeholders::_2)));
			// divide squared inner product by size1 * size2 to get cosine similarity
			rational inner_prod{ba::sum(acc)};
			inner_prod *= inner_prod;
			rational denominator{items.size() * all_peers[other]->items.size()};
			if(similarities.count(other)) // sanity check
					assert(	similarities[other] == inner_prod / denominator);

			similarities[other] = inner_prod / denominator;
			//std::cout << "squared cossim "
			//					<< std::setfill('0') << std::setw(3) << a << "-"
			//					<< std::setfill('0') << std::setw(3) << b << " = "
			//					<< similarities[id] << std::endl;
			return similarities[other];
	}

	// cyclon stuff
	void																								 add(user_id_t u);
	bool																								 contains(user_id_t u) const;
	void																								 remove(user_id_t u);
	user_id_t																						 random_neighbor() const;
	user_id_t																						 random_replace(user_id_t id);
	void																								 cyclon_do_gossip();
	std::tuple<user*,view_t>														 cyclon_send_gossip(maybe<user_id_t> = none) const;
	void																								 cyclon_receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);
	void																								 exchange_ids(user &other);
	maybe<view_t::iterator>															 operator[](user_id_t u);
	maybe<view_t::const_iterator>	                       operator[](user_id_t u) const;
	void																								 cyclon_print_view();
	// vicinity stuff
	void													 vicinity_do_gossip();
	std::tuple<user*,view_t>	     vicinity_send_gossip(maybe<user_id_t> = none);
	void													 vicinity_receive_gossip(view_t /*by value*/ to_be_received, view_t /*by value*/ was_sent);
	void													 vicinity_print_view();
	rational											 recall() const;

	~user() {}
};


// [1] I could have used
// std::unordered_set<std::shared_ptr<user>>. I do not
// because I need to add to this container during construction. The
// problem is that I would need to inherit from
// std::enable_shared_from_this<user>, and then call
// shared_from_this(). However, it cannot be called during
// construction, otherwise bad_weak_ptr is thrown.
