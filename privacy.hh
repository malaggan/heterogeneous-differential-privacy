#include "conf.hh"
#include "ventry.hh"
#include "abstract_user.hh"
#include <iostream>
#include <iomanip>

rational similarity(ventry &a, ventry &b) {
	extern all_t all_peers;
	return all_peers[a.id]->cached_similarity(b.id);
}

rational similarity(user &a, user &b) {
	return a.cached_similarity(b.id);
}

rational similarity(user &a, ventry &b) {
	return a.cached_similarity(b.id);
}

// more_similar_to(this_guy, a, b)
// returns true if a is more similar to reference than b
bool more_similar(user &reference, ventry &a, ventry &b) {
	return similarity(reference, a) > similarity(reference, b);
}

bool less_similar(user &reference, ventry &a, ventry &b, bool log) {
	if(log && reference.id == 1) {
		using namespace std;

		cout << "similarity(1, a["<<a.id<<"]) "<<similarity(reference, a)<<" < " << similarity(reference, b) << " similarity(1, b["<<b.id<<"]) //"
		     << similarity(reference, b) << " "
		     << boolalpha << (similarity(reference, a) < similarity(reference, b))
		     << endl;
	}
	return similarity(reference, a) < similarity(reference, b);
}

#include <functional>
struct semantic_comp : public std::binary_function<user&, ventry&, bool>{
	user *ref;
	bool log;
	/*explicit*/ semantic_comp(user *ref) : ref{ref}, log{false} {}
	bool operator()(ventry &a, ventry &b) {
		return less_similar(*ref, a, b, log);
	}
	auto id() { return ref -> id; }
};
