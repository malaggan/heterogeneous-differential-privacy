#include "abstract_user.hpp"

bool std::equal_to<abstract_user*>::operator()(const abstract_user* a, const abstract_user* b) const
{
    return a->id == b->id;
}
