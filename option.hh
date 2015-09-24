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
};

#include <type_traits>
template<typename T>
constexpr option<std::decay_t<T>>
make_option(T&& t) {
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
		return make_option<>(it);
	}

	template <typename Range, typename T>
	auto find(Range const &r, T const &val) -> option<decltype(boost::find(r, val))> {
		auto it = boost::find(r, val);
		if(it == std::end(r))
			return nullopt;
		return make_option<>(it);
	}
}
