#include "conf.hh"
#include <iostream>
#include <iomanip>
rational similarity(user_id_t a,
										user_id_t b);

template <typename T1, typename T2>
rational similarity(T1 const &a, T2 const& b) {
	return similarity(a.id, b.id);
}

// more_similar_to(this_guy, a, b)
// returns true if a is more similar to reference than b
template <typename T1, typename T2>
bool more_similar(T1 const &reference, T2 const& a, T2 const& b) {
	return similarity(reference, a) > similarity(reference, b);
}

template <typename T1, typename T2>
bool less_similar(T1 const &reference, T2 const& a, T2 const& b, bool log) {
		if(log && reference.id == 1) {
				using namespace std;

				cout << "similarity(1, a["<<a.id<<"]) "<<similarity(reference, a)<<" < " << similarity(reference, b) << " similarity(1, b["<<b.id<<"]) //"
						 << similarity(reference.id, b.id) << " "
						 << boolalpha << (similarity(reference, a) < similarity(reference, b))
						 << endl;
		}
	return similarity(reference, a) < similarity(reference, b);
}

#include <functional>
template<typename C, typename T>
struct semantic_comp : public std::binary_function<T const&, T const&, bool>{
	C const *ref;
		bool log;
		/*explicit*/ semantic_comp(C const *ref) : ref{ref}, log{false} {}
	constexpr bool operator()(T const& a, T const& b) const {
			return less_similar<C, T>(*ref, a, b, log);
	}
		auto id() { return ref -> id; }
};
