// -*- mode : c++; -*-

// this is a min heap: top of heap is the minimum element
// this is version 2 of heap.inl.h

#include <utility> // for std::swap
// sifts the node(at index start) down to the proper place such that all nodes below the start index are in heap order.
// swap root with its min(left-if-exists, right-if-exists) if it is less than them
template<typename RandomAccessIterator, typename T, typename Comparator>
void sift_down(RandomAccessIterator values, T root, T end, Comparator comp) {
	auto left = root * 2 + 1;
	auto right = left + 1;

	// keeps track of child to victim with
	auto victim = root;

	// check if left child is bigger than the root
	if (left < end &&
	    comp(values[left], values[victim]))
		victim = left;

	// check if right child exists, and if it's bigger than what we're currently swapping with
	if (right < end &&
	    comp(values[right], values[victim]))
		victim = right;

	// (check if we need to victim at all)
	if (victim == root)
		return;

	std::swap(values[root], values[victim]);

	// tail recursion : repeat to continue sifting down the child now
	sift_down(values, victim, end, comp);
}

template<typename RandomAccessIterator, typename T, typename Comparator>
void heapify(RandomAccessIterator values, T k, Comparator comp)
{
	for(T start = 0; start <= (k - 2) / 2; start++)
		sift_down(values, (k - 2) / 2 - start, k /* exclusive */, comp);
}
