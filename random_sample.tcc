// -*- mode : c++; -*-
#pragma once

#include <type_traits>
#include <algorithm>
#include <iterator>
#include <vector>
#ifdef __GNUC__
#  include <features.h>
#  if __GNUC_PREREQ(5,0)
#    include <experimental/algorithm>
#  endif
#endif

#include "random.hh"
std::default_random_engine rng{std::random_device{}()};

template <typename T>
using remove_cr_t = std::remove_const_t<std::remove_reference_t<T>>;

template <typename T>
using element_type_t = decltype(*std::begin(std::declval<T>()));

#include <utility>
#include <utility>

template <template <typename...> class ReturnTypeT = std::vector>
struct random_sample {
    template <typename Range, typename ReturnType = ReturnTypeT<remove_cr_t<element_type_t<Range>>>>
	ReturnType operator()(Range const& range, std::size_t sample_size) const {
	auto begin = std::begin(range); 
	auto end   = std::end  (range);
	using T = std::remove_const_t<std::remove_reference_t<decltype(*begin)>>;
    
	if(begin == end || 0 == sample_size)
	    return ReturnType{};
    
	sample_size = std::min<std::size_t>(sample_size, std::distance(begin,end));

	if(1 == sample_size)
	{
	    std::advance(begin, std::uniform_int_distribution<std::size_t>{0,sample_size-1}(rng));
	    return ReturnType{*begin};
	}
    
#ifdef __cpp_lib_experimental_sample // Library fundamentals TS
	std::vector<T> ret(sample_size);
	std::experimental::sample(begin, end, std::begin(ret), sample_size, rng);
	return ReturnType{std::begin(ret), std::end(ret)};
#else
	// copy the container so we can shuffle it
	// shuffle needs a random-access iterator, so we use std::vector here
	std::vector<T> ret{begin, end};
	std::shuffle(std::begin(ret), std::end(ret), rng);
	ret.resize(sample_size);
	return ReturnType{std::begin(ret), std::end(ret)};
#endif   	
    }
};

