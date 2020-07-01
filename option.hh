#pragma once

#include <optional>
#include <functional> // for std::function

template <typename T>
using base_maybe = std::optional<T>;
constexpr std::nullopt_t none { std::nullopt_t::_Construct::_Token };

template<typename T>
//using maybe = std::optional<T>;
class maybe : public base_maybe<T> {
	using base_maybe<T>::base_maybe; // inherit constructors
public:
	// make constructor explicit!
	constexpr explicit maybe( const T& value ) : base_maybe<T>{value} {}
	constexpr explicit maybe( T&& value ) : base_maybe<T>{std::move(value)} {}

	// bind = fmap + join. This is the join: maybe<maybe<B>> -> maybe<B>.
	// TODO: test for maybe<maybe<maybe<T>>>
	constexpr maybe( maybe<maybe<T>> const& o ) : base_maybe<T>{none} {
		if(o)
			*this = o.value();
	}

	// the Monad operation `bind'
	template <typename B>
	maybe<B> bind(std::function<maybe<B>(T)> func) {
		if(!*this)
			return none;
		return func(base_maybe<T>::value());
	}

	// Cannot specialize the above (http://stackoverflow.com/questions/4994775/c-specialization-of-template-function-inside-template-class#comment5582274_4995106)
	// Instead, overload it! (http://stackoverflow.com/a/10142774/397405)
	void bind(std::function<void(T)> func) {
		if(!*this)
			return;
		func(base_maybe<T>::value());
	}

	// like value_or but sans unwrap.
	// TODO: use universal ref
	maybe<T> self_or(maybe<T> t) const {
		if(!*this)
			return t;
		return *this;
	}
};

#include <type_traits>
template<typename T>
constexpr maybe<std::decay_t<T>>
some(T&& t) {
	return maybe<std::decay_t<T>> { std::forward<T>(t) };
}

// --- find
#include <boost/range/algorithm/find.hpp>
// make find return maybe, instead of checking equality to end()
namespace hdp {
	template <typename Range, typename T>
	auto find(Range &r, T const &val) -> maybe<decltype(boost::find(r, val))> {
		auto it = boost::find(r, val);
		if(it == std::end(r))
			return none;
		return some(it);
	}

	template <typename Range, typename T>
	auto find(Range const &r, T const &val) -> maybe<decltype(boost::find(r, val))> {
		auto it = boost::find(r, val);
		if(it == std::end(r))
			return none;
		return some(it);
	}
}

// --- lift arithmetic operators to maybe. Cannot use a generic lift
// function since it is only useful if "+" is a first class function,
// not a built-in operator.

// SFINAE to enable only on arithmetic types (or perhaps on any type with operator+ ?)
#include <type_traits>
#define maybe_lift_arith(op) template <typename T1, typename T2>                                  \
std::enable_if_t<                                                                                 \
     std::is_arithmetic_v<T1> and                                                   \
	   std::is_arithmetic_v<T2>,                                                      \
maybe<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(maybe<T1> a, maybe<T2> b)	\
{                                                                                                 \
	if(a && b)                                                                                      \
		return some(a.value() op b.value());                                                          \
	return none;																																										\
}                                                                                                 \
template <typename T1, typename T2>                                                               \
std::enable_if_t<                                                                                 \
     std::is_arithmetic_v<T1> and                                                   \
	   std::is_arithmetic_v<T2>,                                                      \
maybe<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(maybe<T1> a, T2 b)         \
{                                                                                                 \
	if(a)                                                                                           \
		return some(a.value() op b);                                                                  \
	return none;																																										\
}                                                                                                 \
template <typename T1, typename T2>                                                               \
std::enable_if_t<                                                                                 \
     std::is_arithmetic_v<T1> and                                                   \
	   std::is_arithmetic_v<T2>,                                                      \
maybe<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(T1 a, maybe<T2> b)         \
{                                                                                                 \
	if(b)                                                                                           \
		return some(a op b.value());                                                                  \
	return none;																																										\
}
// XXX: Is "a && b" this the correct behaviour? What if the semantics
// would be: if(!a) return b;, as in "a || b"?

maybe_lift_arith(+)
maybe_lift_arith(-)
maybe_lift_arith(/)
maybe_lift_arith(*)

#undef maybe_lift_arith
