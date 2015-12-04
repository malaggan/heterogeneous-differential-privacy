#pragma once

#include <string>
#include <cassert>
#include <iostream>

//------------------------------------------------------------
enum class dataset_t { survey = 1, digg, delicious };
dataset_t to_dataset(std::string str) {
	if(str == "survey.txt") return dataset_t::survey;
	else if(str == "digg.txt") return dataset_t::digg;
	else if(str == "delicious.txt") return dataset_t::delicious;
	else assert(false);
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

//------------------------------------------------------------
enum class min_t { zero = 1, half, nine };
min_t to_min(double d) {
	if(d < 0.3) return min_t::zero;
	else if(d < 0.7) return min_t::half;
	else if(d < 1.0) return min_t::nine;
	else assert(false);
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

//------------------------------------------------------------
enum class expr_t { baseline = 1, blind, slices, groups, naive };
expr_t to_expr(std::string const &str) {
	if(str == "baseline") return expr_t::baseline;
	else if(str == "blind") return expr_t::blind;
	else if(str == "slices") return expr_t::slices;
	else if(str == "groups") return expr_t::groups;
	else if(str == "naive") return expr_t::naive;
	else assert(false);
}
//------------------------------------------------------------
enum class peer_type { unconcerned = 1, normal, concerned };
peer_type to_peer_type(std::string const &str) {
	if(str == "UNCONCERNED") return peer_type::unconcerned;
	else if(str == "NORMAL") return peer_type::normal;
	else if(str == "CONCERNED") return peer_type::concerned;
	else assert(false);
}
//------------------------------------------------------------
enum class norm_t { _10 = 1, _20, _60, _70 };
norm_t to_norm(double d) {
	if(d < 0.15) return norm_t::_10;
	else if(d < 0.5) return norm_t::_20;
	else if(d < 0.65) return norm_t::_60;
	else if(d < 1.0) return norm_t::_70;
	else assert(false);
}
//------------------------------------------------------------
enum class conc_t { _20 = 1, _30, _60, _70, _80 };
conc_t to_conc(double d) {
	if(d < 0.25) return conc_t::_20;
	else if(d < 0.5) return conc_t::_30;
	else if(d < 0.65) return conc_t::_60;
	else if(d < 0.75) return conc_t::_70;
	else if(d < 1.0) return conc_t::_80;
	else assert(false);
}
std::ostream& operator<<(std::ostream &os, const conc_t &d)
{
	switch(d) {
	case conc_t::_20 : os << "20%"; break;
	case conc_t::_30 : os << "30%"; break;
	case conc_t::_60 : os << "60%"; break;
	case conc_t::_70 : os << "70%"; break;
	case conc_t::_80 : os << "80%"; break;
	default : assert(false);
	}
	return os;
}
//------------------------------------------------------------
enum class alpha_t { _0 = 1, _20, _40, _60, _80, _100 };
alpha_t to_alpha(double d) {
	if(d < 0.10) return alpha_t::_0;
	else if(d < 0.30) return alpha_t::_20;
	else if(d < 0.50) return alpha_t::_40;
	else if(d < 0.70) return alpha_t::_60;
	else if(d < 0.90) return alpha_t::_80;
	else if(d < 1.1) return alpha_t::_100;
	else assert(false);
}
std::ostream& operator<<(std::ostream &os, const alpha_t &d)
{
	switch(d) {
	case alpha_t::_0 : os << "0%"; break;
	case alpha_t::_20 : os << "20%"; break;
	case alpha_t::_40 : os << "40%"; break;
	case alpha_t::_60 : os << "60%"; break;
	case alpha_t::_80 : os << "80%"; break;
	case alpha_t::_100 : os << "100%"; break;
	default : assert(false);
	}
	return os;
}
