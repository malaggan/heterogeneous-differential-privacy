#pragma once

#include "conf.hh"

// view entry
struct ventry_t {
	ventry_t()                                 : id{}  , age{}    {}
	explicit ventry_t(user_id_t id, age_t age) : id{id}, age{age} {}
	using cref = ventry_t const&;

	// --- Comparison operators
	// Equivalence depends on ID only, while comparison depends on age only.
	bool operator==(cref other) const {return  id == other.id  ; }
	bool operator!=(cref other) const {return  id != other.id  ; }

	bool operator< (cref other) const {return age <  other.age ; }
	bool operator<=(cref other) const {return age <= other.age ; }
	bool operator> (cref other) const {return age >  other.age ; }
	bool operator>=(cref other) const {return age >= other.age ; }

	// --- Hashing (for unordered_set). Depend on ID only, since no
	// duplicates are allowed.  For correctness, when two ventry_t's
	// collide in a set, the maximum age should be taken. This is
	// outside of the scope of this class and should be handled in the
	// container. TODO
	struct hash {
		std::size_t operator()(cref view_entry) const {
			return std::hash<user_id_t>()(view_entry.id);
		}
	};

	// --- Key equality (for unordered_set)
	struct key_eq {
		bool operator()(cref a, cref b) const {
			return a.id == b.id;
		}
	};

	void reset_age() { age = 0; }

	// age is the age of the user since he joined the network, not his
	// age in the view
	void update_age(cref other) const { /* why const ? [1] */
		age = std::max(age, other.age);
	}

	void operator++(int) const { age++; }

	user_id_t     id;
	mutable age_t age;
};

inline bool operator==(ventry_t::cref v, user_id_t id) {return  v.id == id; }

// [1] generates an error since set entires are immutable, iterator and const_iterator are both constant iterators [2]
// Must make hash and equality depend only in the key (the id).

// [2] In C++0x standard:
// 23.2.4 Associative containers
// 5 For set and multiset the value type is the same as the key type. For map and multimap it is equal to pair. Keys in an associative container are immutable.
// 6 iterator of an associative container is of the bidirectional iterator category. For associative containers where the value type is the same as the key type, both iterator and const_iterator are constant iterators. It is unspecified whether or not iterator and const_iterator are the same type.
