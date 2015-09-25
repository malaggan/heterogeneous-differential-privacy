#pragma once

#include "heap.tcc"
#include <array>
#include <boost/range/algorithm_ext/copy_n.hpp>
#include <boost/range/algorithm/for_each.hpp>

template<typename T, size_t N>
using base_q = std::array<T, N>;

// to be dequeued => min element. so we keep the N maximums
template<typename T, size_t N, typename Comparator = std::less<T>>
class priority_queue : public base_q<T, N> {
	Comparator comp;
public:
	// Had to do it this way because the user we are relatively
	// comparing to is not a compile-time value, and thus cannot be
	// encoded in the type alone. A run-time instance had to be passed.
	template<typename Range>
	priority_queue(Range const& range, Comparator comp) : base_q<T, N>{}, comp{comp} {
		boost::copy_n(range, N, base_q<T, N>::begin());
		heapify();
	}

	priority_queue<T, N, Comparator> & heapify() {
		::heapify(*this, N, comp);
		return *this; // allow chaining
	}

  // insert an element and sift it down
	priority_queue<T, N, Comparator> & push(typename base_q<T, N>::const_reference value) {
		auto arr = base_q<T, N>::data();
		arr[0] = value;
		::sift_down(arr, size_t{0}, N, comp);
		return *this; // allow chaining
	}

	template<typename Range>
	priority_queue<T, N, Comparator> & push_all(Range const& range) {
		boost::for_each(range, std::bind(std::mem_fn(&priority_queue<T, N, Comparator>::push), this, std::placeholders::_1));
		return *this; // allow chaining
	}
};
