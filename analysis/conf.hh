#pragma once
enum class dataset_t { survey = 1, digg = 2, delicious = 3};
enum class min_t { zero = 1, half = 2, nine = 3 };

#include <string>
#include <cassert>
#include <iostream>
dataset_t to_dataset(std::string str) {
	if(str == "survey.txt") return dataset_t::survey;
	else if(str == "digg.txt") return dataset_t::digg;
	else if(str == "delicious.txt") return dataset_t::delicious;
	else assert(false);
}

min_t to_min(double d) {
	if(d < 0.3) return min_t::zero;
	else if(d < 0.7) return min_t::half;
	else return min_t::nine;
}

std::ostream& operator<<(std::ostream &os, const dataset_t &d)
{
	switch(d) {
	case dataset_t::survey : os << "survey"; break;
	case dataset_t::digg : os << "digg"; break;
	case dataset_t::delicious : os << "delicious"; break;
	default : assert(false);
	}
	return os;
}

std::ostream& operator<<(std::ostream &os, const min_t &d)
{
	switch(d) {
	case min_t::zero : os << "0"; break;
	case min_t::half : os << "0.5"; break;
	case min_t::nine : os << "0.9"; break;
	default : assert(false);
	}
	return os;
}
