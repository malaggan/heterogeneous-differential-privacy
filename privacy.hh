#include "conf.hh"

float similarity(user_id_t a,
                 user_id_t b);

template <typename T1, typename T2>
float similarity(T1 const &a, T2 const& b) {
	return similarity(a.id, b.id);
}

// more_similar_to(this_guy, a, b)
// returns true if a is more similar to reference than b
template <typename T1, typename T2>
bool more_similar(T1 const &reference, T2 const& a, T2 const& b) {
	return similarity(reference, a) > similarity(reference, b);
}

template<typename C, typename T>
struct semantic_comp {
	C const *ref;
	/*explicit*/ semantic_comp(C const *ref) : ref{ref} {}
	constexpr bool operator()(T const& a, T const& b) {
		return more_similar<C, T>(*ref, a, b);
	}
};