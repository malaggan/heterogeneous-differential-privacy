#pragma once

#include "conf.hh"

#include <boost/range/adaptor/transformed.hpp>

// view entry
struct ventry {
	constexpr ventry()                                 : id{}  , age{}    {} // FIXME: do we need a default ctor?
	constexpr explicit ventry(user_id_t id, age_t age) : id{id}, age{age} {}
	using cref = ventry const&;

	// --- Comparison operators
	// Equivalence depends on ID only, while comparison depends on age only.
	constexpr bool operator==(cref other) const {return  id == other.id  ; }
	constexpr bool operator!=(cref other) const {return  id != other.id  ; }

	constexpr bool operator< (cref other) const {return age <  other.age ; }
	constexpr bool operator<=(cref other) const {return age <= other.age ; }
	constexpr bool operator> (cref other) const {return age >  other.age ; }
	constexpr bool operator>=(cref other) const {return age >= other.age ; }

	// --- Hashing (for unordered_set). Depend on ID only, since no
	// duplicates are allowed.  For correctness, when two ventry's
	// collide in a set, the maximum age should be taken. This is
	// outside of the scope of this class and should be handled in the
	// container. TODO
	struct hash {
		constexpr std::size_t operator()(cref view_entry) const {
			return view_entry.id;
		}
	};

	// --- Key equality (for unordered_set)
	struct key_eq {
		constexpr bool operator()(cref a, cref b) const {
			return a.id == b.id;
		}
	};

	// --- Methods

	constexpr ventry& reset_age() { age = 0; return *this; }

	// age is the age of the user since he joined the network, not his
	// age in the view
	constexpr ventry const& update_age(cref other) const { /* why const ? [1] */
		age = std::max(age, other.age);
		return *this;
	}

	constexpr void operator++(int) const { age++; }

	user_id_t     id;
	mutable age_t age;
};

// --- Convenience
namespace helpers {
	auto map_ids = boost::adaptors::transformed([](ventry const &a){return a.id;}); // TODO: use constexpr accessor mem_fn
}

constexpr inline bool operator==(ventry::cref v, user_id_t id) {return  v.id == id; }

// [1] generates an error since set entires are immutable, iterator and const_iterator are both constant iterators [2]
// Must make hash and equality depend only in the key (the id).

// [2] In C++0x standard:
// 23.2.4 Associative containers
// 5 For set and multiset the value type is the same as the key type. For map and multimap it is equal to pair. Keys in an associative container are immutable.
// 6 iterator of an associative container is of the bidirectional iterator category. For associative containers where the value type is the same as the key type, both iterator and const_iterator are constant iterators. It is unspecified whether or not iterator and const_iterator are the same type.
