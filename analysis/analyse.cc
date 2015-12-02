#include "conf.hh"
#include "stat.hh"
#include <string>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <boost/range/counting_range.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string/split.hpp>
#include <boost/algorithm/string/classification.hpp>
#include <boost/functional/hash.hpp>
#include <boost/format.hpp>
#include <tuple>
#include <iterator>

namespace std {
	template<typename... T>
	struct hash<tuple<T...>>
	{
		size_t operator()(tuple<T...> const& arg) const noexcept
		{
			return boost::hash_value(arg);
		}
	};

	template<>
	struct hash<dataset_t>
	{
		size_t operator()(dataset_t const& arg) const noexcept
		{
			return boost::hash_value(arg);
		}
	};
}

void output_slices_plot(std::unordered_map<std::tuple<dataset_t, uint32_t, min_t>, acc> const &slices_expr_values) {
	using namespace std;
	ifstream tin{"steps.tex.in"};
	string ts{istreambuf_iterator<char>(tin), istreambuf_iterator<char>()};
	boost::format tf{ts};
	for(auto & dataset : vector<dataset_t>{dataset_t::survey, dataset_t::digg, dataset_t::delicious}) {
		for(auto & min : vector<min_t>{min_t::zero, min_t::half, min_t::nine}) {
			for(auto & slices : boost::counting_range(2u, 11u)) {
				auto k = make_tuple(dataset, slices, min);
				assert(slices_expr_values.count(k));
				auto & acc  = slices_expr_values.at(k);
				double mean, ci; tie(mean,ci) = mean_range(acc);
				tf % mean % ci;
			}
		}
	}
	ofstream tout{"steps.tex"};
	tout << tf;
}

void output_min_plot(std::unordered_map<std::tuple<dataset_t, min_t>, acc> const &min_expr_values,
                     std::unordered_map<dataset_t, acc> const &baseline,
                     std::unordered_map<dataset_t, acc> const &random) {
	using namespace std;
	ifstream tin{"min-plot.tex.in"};
	string ts{istreambuf_iterator<char>(tin), istreambuf_iterator<char>()};
	boost::format tf{ts};
	for(auto & dataset : vector<dataset_t>{dataset_t::survey, dataset_t::digg, dataset_t::delicious}) {
		for(auto & min : vector<min_t>{min_t::zero, min_t::half, min_t::nine}) {
			auto k = make_tuple(dataset, min);
			assert(min_expr_values.count(k));
			auto & acc  = min_expr_values.at(k);
			double mean, ci; tie(mean,ci) = mean_range(acc);
			tf % mean % ci;
		}
		assert(baseline.count(dataset));
		assert(random.count(dataset));
		double baseline_mean; tie(baseline_mean,ignore) = mean_range(baseline.at(dataset));
		double random_mean; tie(random_mean,ignore) = mean_range(random.at(dataset));
		tf % baseline_mean % random_mean;
	}
	ofstream tout{"min-plot.tex"};
	tout << tf;
}

void output_groups_plot(std::unordered_map<std::tuple<dataset_t, norm_t, conc_t, peer_type>, acc> const &groups_expr_values) {
	using namespace std;
	ifstream tin{"groups.tex.in"};
	string ts{istreambuf_iterator<char>(tin), istreambuf_iterator<char>()};
	boost::format tf{ts};
	for(auto & dataset : vector<dataset_t>{dataset_t::survey, dataset_t::digg, dataset_t::delicious}) {
		for(auto & norm : vector<norm_t>{norm_t::_10, norm_t::_20, norm_t::_60, norm_t::_70}) {
			for(auto & ptype : vector<peer_type>{peer_type::concerned, peer_type::normal, peer_type::unconcerned}) {
				vector<conc_t> concs;
				switch(norm) {
				case(norm_t::_10): concs = vector<conc_t>{conc_t::_80, conc_t::_70, conc_t::_30, conc_t::_20}; break;
				case(norm_t::_20): concs = vector<conc_t>{conc_t::_70, conc_t::_60, conc_t::_20}; break;
				case(norm_t::_60): concs = vector<conc_t>{conc_t::_30, conc_t::_20}; break;
				case(norm_t::_70): concs = vector<conc_t>{conc_t::_20}; break;
				default: assert(false);
				}
				for(auto & conc : concs) {
					auto k = make_tuple(dataset, norm, conc, ptype);
					assert(groups_expr_values.count(k));
					auto & acc  = groups_expr_values.at(k);
					double mean; tie(mean,ignore) = mean_range(acc);
					tf % mean ;
				}
			}
		}
	}
	ofstream tout{"groups.tex"};
	tout << tf;
}

int main() {
	using namespace std;
	unordered_map<tuple<dataset_t, uint32_t, min_t>, acc> slices_expr_values;
	unordered_map<tuple<dataset_t, min_t>, acc> min_expr_values;
	unordered_map<tuple<dataset_t, norm_t, conc_t, peer_type>, acc> groups_expr_values;
	unordered_map<dataset_t, acc> baseline, random;
	auto comma = boost::is_any_of(",");
	ifstream is{"/home/malaggan/gossple/results.csv"};
	string str;
	bool first = true;
	while(getline(is, str))
	{
		// ignore first line (header)
		if(first) {
			first = false;
			continue;
		}
		// group by datase, slices, min:
		// compute mean and MeanCI
		std::vector<std::string> toks{};
		boost::split(toks, str, comma);
		//      0,   1,      2,         3,   4,     5,  6,          7,     8,        9,    10,    11
		//dataset,seed,user-id,user-class,expr,slices,min,unconcerned,normal,concerned,epsilon,recall
		auto dataset	= to_dataset(toks[0]);
		auto expr     = to_expr(toks[4]);
		auto recall		= boost::lexical_cast<double>(toks[11]);
		switch(expr) {
		// case expr_t::baseline: baseline[dataset](recall); break;
		// case expr_t::blind: random[dataset](recall); break;
		case expr_t::groups: {
			auto norm_ratio = to_norm(boost::lexical_cast<double>(toks[8]));
			auto conc_ratio = to_conc(boost::lexical_cast<double>(toks[9]));
			auto ptype = to_peer_type(toks[3]);
			auto & acc = groups_expr_values[make_tuple(dataset, norm_ratio, conc_ratio, ptype)];
			acc(recall);
		}
			break;
		case expr_t::slices: {
			auto slices		= boost::lexical_cast<uint32_t>(toks[5]);
			auto min			= to_min(boost::lexical_cast<double>(toks[6]));

			auto & acc1 = slices_expr_values[make_tuple(dataset,slices,min)];
			acc1(recall);
			auto & acc2 = min_expr_values[make_tuple(dataset,min)];
			acc2(recall);
			break;
		}
		default: break;
		}
	}
	// output_slices_plot(slices_expr_values);
	// output_min_plot(min_expr_values, baseline, random);
	output_groups_plot(groups_expr_values);
	return 0;
}
