#pragma once

#include <unordered_map>
#include <unordered_set>

constexpr auto viewSize = 10u;
constexpr auto cycles	= 20u;

class abstract_user {
public:
    using user_id_t	= uint_fast32_t;
    using age_t		= uint_fast32_t;
    using view_t	= std::unordered_map<user_id_t,age_t>;
    using set_t         = std::unordered_set<abstract_user*>; // [1]

    user_id_t id;
    explicit abstract_user(user_id_t id) : id{id} {}

    virtual void doGossip() = 0; // TODO : remember to user "override" in subclasses
    virtual void printView() const {}    
    virtual ~abstract_user() {}
};
    
// [1] I could have used std::unordered_set<std::shared_ptr<abstract_user>>. I do not because I need to add to this container during construction. The problem is that I would need to inherit from std::enable_shared_from_this<abstract_user>, and then call shared_from_this(). However, it cannot be called during construction, otherwise bad_weak_ptr is thrown.
