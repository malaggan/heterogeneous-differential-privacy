#pragma once

#include <unordered_map>
#include <unordered_set>
#include <functional>
constexpr auto viewSize = 10u;
constexpr auto cycles	= 20u;

// set_t key equality test
class abstract_user;
namespace std {
  template <> struct equal_to<abstract_user*>
  {
      bool operator()(const abstract_user* a, const abstract_user* b) const;
  };
}

class abstract_user {
public:  
    using user_id_t	= uint_fast32_t;
    using age_t		= uint_fast32_t;
    struct slot {
	user_id_t id;
	mutable age_t age;
	slot() : id{}, age{} {}
	explicit slot(user_id_t id, age_t age) : id(id), age(age) {}
	bool operator==(slot const& other) const {return      id == other.id  ; }
	bool operator!=(slot const& other) const {return !(*this == other)    ; }
	bool operator< (slot const& other) const {return     age <  other.age ; }
	bool operator>=(slot const& other) const {return !(  age <  other.age); }
	bool operator<=(slot const& other) const {return     age <= other.age ; }
	bool operator> (slot const& other) const {return !(  age <= other.age); }
	void reset_age() { age = 0; }
	// age is the age of the user since he joined the network, not his age in the view
	void update_age(slot const& other) const /* why const ? [2] */
	    { age = std::max(age, other.age); }
	struct hash {
	    std::size_t operator()(slot const& slot) const {
		return std::hash<user_id_t>()(slot.id); // "^ (std::hash<age_t>()(slot.age) << 1);" should not be used [2]. 
	    }
	};
	struct key_eq { bool operator()(slot const& a, slot const& b) const {return a.id == b.id; } };
	void operator++(int) const { age++; }
    };
    using view_t	= std::unordered_set<slot, slot::hash, slot::key_eq>; // TODO use boost::static_array
    using set_t         = std::unordered_set<abstract_user*>; // [1]

    user_id_t id;
    explicit abstract_user(user_id_t id) : id{id} {}

    virtual void do_gossip() = 0; // TODO : remember to user "override" in subclasses
    virtual void print_view() const {}    
    virtual ~abstract_user() {}
};
    
// [1] I could have used std::unordered_set<std::shared_ptr<abstract_user>>. I do not because I need to add to this container during construction. The problem is that I would need to inherit from std::enable_shared_from_this<abstract_user>, and then call shared_from_this(). However, it cannot be called during construction, otherwise bad_weak_ptr is thrown.


// [2] generates an error since set entires are immutable, iterator and const_iterator are both constant iterators [3]
// Must make hash and equality depend only in the key (the id).

// [3] In C++0x standard:
// 23.2.4 Associative containers
// 5 For set and multiset the value type is the same as the key type. For map and multimap it is equal to pair. Keys in an associative container are immutable.
// 6 iterator of an associative container is of the bidirectional iterator category. For associative containers where the value type is the same as the key type, both iterator and const_iterator are constant iterators. It is unspecified whether or not iterator and const_iterator are the same type.
