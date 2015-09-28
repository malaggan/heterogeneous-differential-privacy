#pragma once

#include "abstract_user.hh"

using set_base     = std::unordered_set<abstract_user*,
                                        abstract_user::hash,
                                        abstract_user::key_eq>; // [1]

#include "random_sample.tcc"

class set_t : public set_base {
	using set_base::set_base; // inherit constructors
public:
	auto random_subset(size_t size) const {
		return random_sample<>{}(*this, size);
	}
};
// [1] I could have used
// std::unordered_set<std::shared_ptr<abstract_user>>. I do not
// because I need to add to this container during construction. The
// problem is that I would need to inherit from
// std::enable_shared_from_this<abstract_user>, and then call
// shared_from_this(). However, it cannot be called during
// construction, otherwise bad_weak_ptr is thrown.
