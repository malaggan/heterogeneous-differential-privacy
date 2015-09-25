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
	size_t _size;
public:
	// Had to do it this way because the user we are relatively
	// comparing to is not a compile-time value, and thus cannot be
	// encoded in the type alone. A run-time instance had to be passed.
	template<typename Range>
	priority_queue(Range const& range, Comparator comp) : base_q<T, N>{}, comp{comp} {
		auto num = std::min<size_t>(N, boost::distance(range));
		boost::copy_n(range, num, base_q<T, N>::begin()); // XXX: (1): hint: use rbegin or std::copy_backwards
		_size = num;
		heapify();
	}

	size_t size() const { return _size; }

	priority_queue<T, N, Comparator> & heapify() {
		::heapify(*this, size(), comp);
		return *this; // allow chaining
	}

  // insert an element and sift it down
	priority_queue<T, N, Comparator> & push(typename base_q<T, N>::const_reference value) {
		auto arr = base_q<T, N>::data();
		arr[0] = value; // XXX: bug: size of container will never reach N (if num < N) when newer items are pushed.
		                // solution: TODO: heap begins at some index S (1). S = 0 only if heap is full. When heap not full
		                //                 decrement S, and put new element at arr[S]. heapify must be called to
		                //                 restore heap structure.
		::sift_down(arr, size_t{0}, size(), comp);
		return *this; // allow chaining
	}

	template<typename Range>
	priority_queue<T, N, Comparator> & push_all(Range const& range) {
		boost::for_each(range, std::bind(std::mem_fn(&priority_queue<T, N, Comparator>::push), this, std::placeholders::_1));
		return *this; // allow chaining
	}
};
