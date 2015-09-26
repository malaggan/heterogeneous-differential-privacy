#pragma once

#include <experimental/optional>
#include <functional> // for std::function

template <typename T>
using base_opt = std::experimental::optional<T>;
using std::experimental::nullopt;

template<typename T>
//using option = std::experimental::optional<T>;
class option : public base_opt<T> {
	using base_opt<T>::base_opt; // inherit constructors
public:
	// make constructor explicit!
	constexpr explicit option( const T& value ) : base_opt<T>{value} {}
	constexpr explicit option( T&& value ) : base_opt<T>{std::move(value)} {}

  // bind = fmap + join. This is the join: option<option<B>> -> option<B>.
	// TODO: test for option<option<option<T>>>
	constexpr option( option<option<T>> const& o ) : base_opt<T>{nullopt} {
		if(o)
			*this = o.value();
	}

	// the Monad operation `bind'
	template <typename B>
	option<B> bind(std::function<option<B>(T)> func) {
		if(!*this)
			return nullopt;
		return func(base_opt<T>::value());
	}

	// Cannot specialize the above (http://stackoverflow.com/questions/4994775/c-specialization-of-template-function-inside-template-class#comment5582274_4995106)
	// Instead, overload it! (http://stackoverflow.com/a/10142774/397405)
	void bind(std::function<void(T)> func) {
		if(!*this)
			return;
		func(base_opt<T>::value());
	}

	// like value_or but sans unwrap.
	// TODO: use universal ref
	option<T> self_or(option<T> t) const {
		if(!*this)
			return t;
		return *this;
	}
};

#include <type_traits>
template<typename T>
constexpr option<std::decay_t<T>>
some(T&& t) {
	return option<std::decay_t<T>> { std::forward<T>(t) };
}

// --- find
#include <boost/range/algorithm/find.hpp>
// make find return option, instead of checking equality to end()
namespace gossple {
	template <typename Range, typename T>
	auto find(Range &r, T const &val) -> option<decltype(boost::find(r, val))> {
		auto it = boost::find(r, val);
		if(it == std::end(r))
			return nullopt;
		return some(it);
	}

	template <typename Range, typename T>
	auto find(Range const &r, T const &val) -> option<decltype(boost::find(r, val))> {
		auto it = boost::find(r, val);
		if(it == std::end(r))
			return nullopt;
		return some(it);
	}
}

// --- lift arithmetic operators to option. Cannot use a generic lift
// function since it is only useful if "+" is a first class function,
// not a built-in operator.

// SFINAE to enable only on arithmetic types (or perhaps on any type with operator+ ?)
#include <experimental/type_traits>
#define option_lift_arith(op) template <typename T1, typename T2>                                   \
std::enable_if_t<                                                                                   \
     std::experimental::is_arithmetic_v<T1> and                                                     \
	   std::experimental::is_arithmetic_v<T2>,                                                        \
option<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(option<T1> a, option<T2> b) \
{                                                                                                   \
	if(a && b)                                                                                        \
		return some(a.value() op b.value());                                                            \
	return nullopt;                                                                                   \
}                                                                                                   \
template <typename T1, typename T2>                                                                 \
std::enable_if_t<                                                                                   \
     std::experimental::is_arithmetic_v<T1> and                                                     \
	   std::experimental::is_arithmetic_v<T2>,                                                        \
option<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(option<T1> a, T2 b)         \
{                                                                                                   \
	if(a)                                                                                             \
		return some(a.value() op b);                                                                    \
	return nullopt;                                                                                   \
}                                                                                                   \
template <typename T1, typename T2>                                                                 \
std::enable_if_t<                                                                                   \
     std::experimental::is_arithmetic_v<T1> and                                                     \
	   std::experimental::is_arithmetic_v<T2>,                                                        \
option<decltype(std::declval<T1>() op std::declval<T2>())>> operator op(T1 a, option<T2> b)         \
{                                                                                                   \
	if(b)                                                                                             \
		return some(a op b.value());                                                                    \
	return nullopt;                                                                                   \
}
// XXX: Is "a && b" this the correct behaviour? What if the semantics
// would be: if(!a) return b;, as in "a || b"?

option_lift_arith(+)
option_lift_arith(-)
option_lift_arith(/)
option_lift_arith(*)

#undef option_lift_arith
