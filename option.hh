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
