#include "vicinity.hh"
#include <boost/function_output_iterator.hpp>
#include <boost/range/algorithm/copy.hpp>
#include <boost/lambda/lambda.hpp>
#include <iostream>
#include <iomanip>

using boost::make_function_output_iterator;
using boost::lambda::var;
using boost::lambda::_1;
using boost::copy;
using std::setw;
using std::cout;
using std::endl;

template<typename RPS>
void vicinity<RPS>::print_view() const {
    copy(
	view | ::helpers::map_ids,
	make_function_output_iterator( 
	    var(cout) << setw(3) << _1 << ",") // another sol here: http://mariusbancila.ro/blog/2008/04/10/output-formatting-with-stdcopy/
	);
    cout << endl;
}

// explicit instantiation
#include "cyclon.hh"
template void vicinity<cyclon>::print_view() const;
