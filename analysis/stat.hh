#pragma once
#include <boost/accumulators/statistics/stats.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/statistics/count.hpp>
#include <boost/accumulators/statistics/mean.hpp>
#include <boost/accumulators/statistics/variance.hpp>
#include <boost/accumulators/statistics/sum_kahan.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/math/distributions/students_t.hpp>

namespace ba = boost::accumulators;
namespace bm = boost::math;
using acc =
        ba::accumulator_set<double,
                            ba::features<ba::tag::sum_kahan,
                                         ba::tag::count,
                                         ba::stats<ba::tag::mean,
                                                   ba::tag::variance>>>;

auto mean_range(acc const &acc) {
    auto           count = ba::count(acc);
    bm::students_t dist(count - 1);
    double         T = bm::quantile(bm::complement(dist, 0.01 / 2));
    double         w = T * std::sqrt(ba::variance(acc)) / std::sqrt(static_cast<double>(count));
    return std::make_pair(ba::mean(acc), w);
}
