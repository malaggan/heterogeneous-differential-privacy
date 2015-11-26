// -*- mode : c++; -*-

// this is a min heap: top of heap is the minimum element
// this is version 2 of heap.inl.h

#include "option.hh"
#include <utility> // for std::swap

// sifts the node(at index start) down to the proper place such that all nodes below the start index are in heap order.
// swap root with its min(left-if-exists, right-if-exists) if it is less than them
struct heap_index {
	size_t first; // index_of_first_element_in_the_range
	size_t range_size;
	maybe<size_t> validate(size_t index) { if(index >= range_size) return none; return some(index); }
	maybe<size_t> left() { // index_of_left_child_in_that_range
		return some(first * 2 + 1)
			.bind<>(std::function<maybe<size_t>(size_t)>{std::bind(&heap_index::validate, this, std::placeholders::_1)});
	}
	maybe<size_t> right() { // index_of_right_child_in_that_range
		return (left() + 1)
			.bind<>(std::function<maybe<size_t>(size_t)>{std::bind(&heap_index::validate, this, std::placeholders::_1)});
	}
	heap_index subtree(size_t new_first) {
		return heap_index{new_first, range_size};
	}
};

template <typename T> using fn = std::function<T>;

template<typename RandomAccessRange, typename Comparator>
void sift_down(RandomAccessRange range, Comparator comp, heap_index root) {
	using f1 = fn<fn<maybe<size_t>(size_t)>(maybe<size_t>)>;
	using f2 = fn<maybe<size_t>(size_t)>;
	f1 if_greater =
		[&](maybe<size_t> other) {
		return f2{
			[&comp,&range,other/*the bug: was capturing other by ref on expired stack frame...*/](size_t idx) -> maybe<size_t> {
				if(not other) return none;
				auto const &a = boost::begin(range)[idx];
				auto const &b = boost::begin(range)[other.value()];
				if(not comp(a, b))
					return none;
				return some(idx);
			}
		};
	};
	maybe<size_t> left  = root
		.left()
		.bind<>(if_greater(some(root.first)));
	root
		.right()
		.bind<>(if_greater(some(root.first)))
		.bind<>(if_greater(left))
		.self_or(left)
		.bind(
			[&](size_t victim){
				std::swap(boost::begin(range)[root.first],boost::begin(range)[victim]);
				// tail recursion : repeat to continue sifting down the child now
				sift_down(range, comp, root.subtree(victim));
			});
}

template<typename RandomAccessRange, typename Comparator>
void sift_down(RandomAccessRange range, Comparator comp) {
	sift_down(range, comp, heap_index{0, static_cast<size_t>(boost::distance(range))});
}

template<typename RandomAccessRange, typename Comparator>
void heapify(RandomAccessRange range, Comparator comp)
{
	size_t range_size{static_cast<size_t>(boost::distance(range))};
	if(range_size <= 1) return; // empty or 1-element heap is vacuously heapified
	for(size_t start = 0; start <= (range_size - 2) / 2; start++)
		sift_down(range, comp, heap_index{(range_size - 2) / 2 - start, range_size});
}
