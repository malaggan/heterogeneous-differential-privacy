#include <string>
#include <sstream>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string/split.hpp>
#include <boost/algorithm/string/classification.hpp>
#include <boost/math/distributions/students_t.hpp>
#include <boost/accumulators/statistics/stats.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/statistics/count.hpp>
#include <boost/accumulators/statistics/mean.hpp>
#include <boost/accumulators/statistics/variance.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/functional/hash.hpp>

// Count is there to report in the paper over how many runs i took the
// average, and also to use in the MeanCI computation
namespace ba = boost::accumulators;
namespace bm = boost::math;
using acc =
	ba::accumulator_set<double,
	                    ba::features<ba::tag::sum_kahan,
	                                 ba::tag::count,
	                                 ba::stats<ba::tag::mean,
	                                           ba::tag::variance>>>;

std::string mean_range(acc &acc) {
	auto count = ba::count(acc);
	bm::students_t dist(count - 1);
	double T = bm::quantile(bm::complement(dist, 0.01/2));
	double w = T * std::sqrt(ba::variance(acc)) / std::sqrt(static_cast<double>(count));
	std::ostringstream ss;
	ss << ba::mean(acc) << u8" ± " << w << " (" << count << ")";
	return ss.str();
}

struct key {
  std::string	 dataset;
	uint32_t		 slices;
	double			 min;

	explicit key(std::vector<std::string> const &toks) :
	dataset{toks[0]},
	  slices{boost::lexical_cast<uint32_t>(toks[1])},
	  min{boost::lexical_cast<double>(toks[2])}
		{}

  bool operator==(key const &other) const {
	  return dataset	== other.dataset
		  and slices		== other.slices
		  and min				== other.min; }
};

std::ostream& operator<<(std::ostream &os, const key &k)
{
	os << "[" << k.dataset << ", " << k.slices << ", " << k.min << "]";
	return os;
}

namespace std {
  template <>
  struct hash<key> {
    std::size_t operator()(key const &k) const {
	    using boost::hash_value;
      using boost::hash_combine;
      std::size_t seed{};
      hash_combine(seed,hash_value(k.dataset));
      hash_combine(seed,hash_value(k.slices));
      hash_combine(seed,hash_value(k.min));
      return seed;
    }
  };
}

int main(int, char *[])
{
	using namespace std;
	// datase, slices, min, recall
  // survey.txt,1,0.5,1.05
  // survey.txt,1,0.5,1.0
	unordered_map<key, acc> values;
	auto comma = boost::is_any_of(",");
	ifstream is{"/home/malaggan/gossple/slices.csv"};
	string str;
	while(getline(is, str))
	{
		// group by datase, slices, min:
		// compute mean and MeanCI
		std::vector<std::string> toks{};
		boost::split(toks, str, comma); // 15 secs
		auto & acc = values[key{toks}]; // 9 sec (creating key instance + table lookup)
		//if(ba::count(acc) < 100) // take 100 samples only : 1 sec (for only 100 samples)
		acc(boost::lexical_cast<double>(toks[3])); // 6 sec (for all samples)
	}
	// for(auto & key : values) {
	//	std::cout << key.first << " " << mean_range(key.second) << std::endl;
	// }
	return 0;
}
