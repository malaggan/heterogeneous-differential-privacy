#pragma once
// TODO try heap.tcc again
#include <boost/range/algorithm/heap_algorithm.hpp>
#include <boost/range/algorithm/min_element.hpp>
#include <array>
#include <functional>
#include <boost/range/algorithm_ext/copy_n.hpp>
#include <boost/range/algorithm/for_each.hpp>
#include <boost/range/iterator_range.hpp>

template<typename T, size_t N>
using base_q = std::array<T, N>;

// to be dequeued => min element. so we keep the N maximums
template<typename T, size_t N, typename Comparator = std::greater<T>> // Comparator is a model of "<".
	class priority_queue : public base_q<T, N> {
		Comparator comp;
		size_t last;
	public:
		// Had to do it this way because the user we are relatively
		// comparing to is not a compile-time value, and thus cannot be
		// encoded in the type alone. A run-time instance had to be passed.
		template<typename Range>
		priority_queue(Range &range, Comparator comp) : base_q<T, N>{}, comp{comp}, last{0} {
			push_all(range);
		}

		auto range()        { auto arr = base_q<T, N>::data(); return boost::make_iterator_range(arr, arr + last); }
		size_t size() const { return last; }

		// insert an element and sift it down
		priority_queue<T, N, Comparator> & push(typename base_q<T, N>::const_reference value_c) {
			typename base_q<T, N>::reference value = const_cast<typename base_q<T, N>::reference>(value_c);
			// ignore repeated users
			for(auto & i : *this)
				if(value.id == i.id) {
					i.update_age(value); // update age of the one that remains to that of the one which perishes
					return *this;
				}

			// Increase size if capacity permits...
			auto arr = base_q<T, N>::data();
			if(last < N)
			{
				arr[last++] = value;
				boost::make_heap(range(), comp);
			}
			// ...but if the capacity is full, do not do anything unless the new item is (strictly) greater than to our smallest value.
			// `comp' is a model of "<".
			else {
				for(auto it = std::begin(*this); it != std::end(*this); it++)
					if(comp(*it, value)) {
						*it = value;
						boost::make_heap(range(), comp);
						return *this;
					}
			}

			return *this; // allow chaining
		}

		template<typename Range>
		priority_queue<T, N, Comparator> & push_all(Range &range) {
			boost::for_each(range, std::bind(&priority_queue<T, N, Comparator>::push, this, std::placeholders::_1));
			return *this; // allow chaining
		}
	};
