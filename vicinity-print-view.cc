#include "abstract_user.hh"
#include "dataset.hh"
#include "log.hh"
#include <boost/range/algorithm/set_algorithm.hpp>
#include <boost/function_output_iterator.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <boost/lambda/lambda.hpp>
#include <sstream>
#include <iomanip>
#include <set>

using boost::make_function_output_iterator;
using boost::lambda::var;
using boost::lambda::_1;
using boost::copy;
using std::ostringstream;
using std::setw;
using std::ends;
using std::setfill;
using std::setw;
using std::left;
using std::right;


void user::vicinity_print_view() {
	//   copy(
	// vicinity_view | ::helpers::map_ids,
	// make_function_output_iterator(
	//     var(cout) << setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	// );
	//   cout << endl;

	if(this->id == 1) {
		extern uint32_t current_cycle;
		ostringstream out;
		out << 'V'
		     << setfill('0') << setw(2) << right << current_cycle << ' '
		     << setfill(' ') << setw(8) << left << recall();
		out << '(';
		for (auto neighbor : vicinity_view | ::helpers::map_ids)
			if( cached_similarity(neighbor) > 0 )
				out << setfill(' ') << setw(4) << right << neighbor << ": "
				     << setfill(' ') << setw(10) << left << cached_similarity(neighbor);
		out << ')';
		out << ends;
		static logger l{"print_view"};
		l.runlog(out.str());
	}
}

double user::recall() const {
	if(test_items.size() == 0)
		return 0.0;
	std::vector<item_id_t> intersection;
	for(auto neighbor : vicinity_view | ::helpers::map_ids)
		boost::set_intersection(test_items, all_peers[neighbor]->items, std::back_inserter<>(intersection));
	std::set<item_id_t> s{std::begin(intersection), std::end(intersection)};
	return static_cast<double>(s.size()) / static_cast<double>(test_items.size());
}
