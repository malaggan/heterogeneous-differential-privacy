#include "random.hh"
std::default_random_engine rng{std::random_device{}()}; // {344u}; // For debugging.
// Instead, to be reproducible std::random_device{}()};
