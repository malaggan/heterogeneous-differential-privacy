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
#include <tuple>

namespace std {
	template<typename... T>
	struct hash<tuple<T...>>
	{
		size_t operator()(tuple<T...> const& arg) const noexcept
		{
			return boost::hash_value(arg);
		}
	};
}

void output_slices_plot(std::unordered_map<std::tuple<dataset_t, uint32_t, min_t>, acc> const &slices_expr_values) {
	using namespace std;
	cout << R"(\begin{figure})" << endl
	     << R"(  \centering)" << endl
	     << R"(  \begin{tikzpicture})" << endl
	     << R"(%mark options={style={scale=2}})" << endl
	     << R"(%line width=1pt)" << endl
	     << R"(    \begin{groupplot}[ %)" << endl
	     << R"(      group style={ group name=my plots0, group size=3 by 1, x descriptions at=edge bottom, horizontal sep=2cm, vertical sep=0.1cm, },%)" << endl
	     << R"(      footnotesize, width=4.5cm, height=5cm, xlabel=$n$, ylabel=Recall, xtick={1,2,3,4,5,6,7,8,9,10}]%))" << endl;
	for(auto & dataset : vector<dataset_t>{dataset_t::survey, dataset_t::digg, dataset_t::delicious}) {
		cout << R"(\nextgroupplot % )" << dataset << endl;
		for(auto & min : vector<min_t>{min_t::zero, min_t::half, min_t::nine}) {
			cout << R"(         \addplot[mark=)";
			switch(min) {
			case min_t::zero : cout << "o"; break;
			case min_t::half : cout << "square"; break;
			case min_t::nine : cout << "diamond"; break;
			default : assert(false);
			}
			cout << R"(,error bars/.cd,y dir=both, y explicit] plot coordinates { )";
			for(auto & slices : boost::counting_range(1u, 11u)) {
				auto k = make_tuple(dataset, slices, min);
				assert(slices_expr_values.count(k));
				auto & acc  = slices_expr_values.at(k);
				double mean, ci; tie(mean,ci) = mean_range(acc);
				cout << "(" << slices <<"," << mean << ") +- (0,{" << ci << "}) ";
			}
			cout << " };%			" << endl;
		}
	}
	cout << R"(    \end{groupplot})" << endl
	     << R"(    \draw (my plots0 c2r1.south)+(0pt,-50pt) node {\ref{groups_legend1}};)" << endl
	     << R"(    \draw (my plots0 c1r1.north)+(0pt,+10pt) node {Survey};)" << endl
	     << R"(    \draw (my plots0 c2r1.north)+(0pt,+10pt) node {Digg};)" << endl
	     << R"(    \draw (my plots0 c3r1.north)+(0pt,+10pt) node {Delicious};)" << endl
	     << R"(  \end{tikzpicture})" << endl << endl
	     << R"(  \caption{The value reported is the average recall obtained when all peers have the same distribution over privacy weights for all items, plotted against the number of slices.})" << endl
	     << R"(  \label{fig:het_priv_steps})" << endl
	     << R"(\end{figure} % o: min=0, square: min=0.5, diamond: min=0.9)" << endl;

}

void output_min_plot(std::unordered_map<std::tuple<dataset_t, min_t>, acc> const &min_expr_values) {
	using namespace std;
	cout << R"(\begin{figure})" << endl
	     << R"(  \centering)" << endl
	     << R"(  \begin{tikzpicture})" << endl
	     << R"(    \begin{groupplot}[ %)" << endl
	     << R"(      group style={ group name=my plots0, group size=3 by 1, x descriptions at=edge bottom, horizontal sep=2cm, vertical sep=0.1cm, },%)" << endl
	     << R"(      footnotesize, width=4.5cm, height=5cm, xlabel=$n$, ylabel=Recall, xtick={1,2,3,4,5,6,7,8,9,10}]%))" << endl;
	for(auto & dataset : vector<dataset_t>{dataset_t::survey, dataset_t::digg, dataset_t::delicious}) {
		cout << R"(\nextgroupplot % )" << dataset << endl;
		for(auto & min : vector<min_t>{min_t::zero, min_t::half, min_t::nine}) {
			cout << R"(         \addplot[mark=)";
			switch(min) {
			case min_t::zero : cout << "o"; break;
			case min_t::half : cout << "square"; break;
			case min_t::nine : cout << "diamond"; break;
			default : assert(false);
			}
			cout << R"(,error bars/.cd,y dir=both, y explicit] plot coordinates { )";

			auto k = make_tuple(dataset, min);
			assert(min_expr_values.count(k));
			auto & acc  = min_expr_values.at(k);
			double mean, ci; tie(mean,ci) = mean_range(acc);
			cout << "(" << min <<"," << mean << ") +- (0,{" << ci << "}) ";

			cout << " };%			" << endl;
		}
	}
	cout << R"(    \end{groupplot})" << endl
	     << R"(    \draw (my plots0 c2r1.south)+(0pt,-50pt) node {\ref{groups_legend1}};)" << endl
	     << R"(    \draw (my plots0 c1r1.north)+(0pt,+10pt) node {Survey};)" << endl
	     << R"(    \draw (my plots0 c2r1.north)+(0pt,+10pt) node {Digg};)" << endl
	     << R"(    \draw (my plots0 c3r1.north)+(0pt,+10pt) node {Delicious};)" << endl
	     << R"(  \end{tikzpicture})" << endl << endl
	     << R"(  \caption{The value reported is the average recall obtained when all peers have the same distribution over privacy weights for all items, plotted against the number of slices.})" << endl
	     << R"(  \label{fig:het_priv_one_group})" << endl
	     << R"(\end{figure})" << endl;

}

int main()
{
	using namespace std;
	unordered_map<tuple<dataset_t, uint32_t, min_t>, acc> slices_expr_values;
	unordered_map<tuple<dataset_t, min_t>, acc> min_expr_values;
	auto comma = boost::is_any_of(",");
	ifstream is{"/home/malaggan/gossple/slices.csv"};
	string str;
	while(getline(is, str))
	{
		// group by datase, slices, min:
		// compute mean and MeanCI
		std::vector<std::string> toks{};
		boost::split(toks, str, comma);
		auto dataset = to_dataset(toks[0]);
		auto slices = boost::lexical_cast<uint32_t>(toks[1]);
		auto min = to_min(boost::lexical_cast<double>(toks[2]));
		auto recall = boost::lexical_cast<double>(toks[3]);
		// auto & acc1 = slices_expr_values[make_tuple(dataset,slices,min)];
		// acc1(recall);
		auto & acc2 = min_expr_values[make_tuple(dataset,min)];
		acc2(recall);
	}
	//output_slices_plot(slices_expr_values);
	output_min_plot(min_expr_values);

	return 0;
}
