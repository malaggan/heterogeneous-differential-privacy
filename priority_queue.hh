#pragma once

#include "heap.tcc"
#include <array>
#include <boost/range/algorithm_ext/copy_n.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <boost/range/iterator_range.hpp>

template<typename T, size_t N>
using base_q = std::array<T, N>;

// to be dequeued => min element. so we keep the N maximums
template<typename T, size_t N, typename Comparator = std::greater<T>> // Comparator is a model of ">".
class priority_queue : public base_q<T, N> {
	Comparator comp;
	size_t first; // Rationale: Otherwise there's a bug: size of container will never reach N (if size() < N) when newer items are pushed.
                // solution: TODO: heap begins at some index S (1). S = 0 only if heap is full. When heap not full
                //                 decrement S, and put new element at arr[S]. heapify must be called to
                //                 restore heap structure.
public:
	// Had to do it this way because the user we are relatively
	// comparing to is not a compile-time value, and thus cannot be
	// encoded in the type alone. A run-time instance had to be passed.
	template<typename Range>
	priority_queue(Range const& range, Comparator comp) : base_q<T, N>{}, comp{comp}, first{N} {
		push_all(range);
	}

	auto range()       { auto arr = base_q<T, N>::data(); return boost::make_iterator_range(arr + first, arr + N); }
	auto range() const { auto arr = base_q<T, N>::data(); return boost::make_iterator_range(arr + first, arr + N); }

	size_t size() const { return N - first; }

  // insert an element and sift it down
	priority_queue<T, N, Comparator> & push(typename base_q<T, N>::const_reference value) {
		// Increase size if capacity permits...
		auto arr = base_q<T, N>::data();
		if(first > 0)
		{
			--first;
			arr[first] = value;
			::heapify(range(), comp);
		}
		// ...but if the capacity is full, do not do anything unless the new item is (strictly) greater than to our smallest value.
		// `comp' is a model of "<". !comp is ">=".
		else if(comp(value, arr[first])) {
			arr[first] = value;
			::sift_down(range(), comp);
		}

		return *this; // allow chaining
	}

	template<typename Range>
	priority_queue<T, N, Comparator> & push_all(Range const& range) {
		boost::for_each(range, std::bind(&priority_queue<T, N, Comparator>::push, this, std::placeholders::_1));
		return *this; // allow chaining
	}
};
