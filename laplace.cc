// Implementation of: Ilya Mironov (2012), On significance of the least significant bits for differential privacy.
// DOI: http://dx.doi.org/10.1145/2382196.2382264
// To Ilya Mironov, if you are reading this, you are awesome!

#include "args.hh"
#include "random.hh"
#include "laplace.hh"
#include <boost/random/laplace_distribution.hpp>

double laplace_rv(double scale, double location = double{}) {
	assert(!vm["secure"].as<bool>());
	return boost::random::laplace_distribution<double>{location, scale}(rng);
}

double laplace_mechanism(double true_answer, double sensitivity) {
	return true_answer + laplace_rv( sensitivity / vm["epsilon"].as<double>() ); // TODO: stope epsilon in a global or local var since this path is hot
}

#if 0 // TODO implement secure laplace
#include <iostream>
#include <cmath>
#include <random>

using std::cout;
using std::endl;

#include <cassert>

static constexpr int exponent_bias = 1023;
union double_cast {
	double v;
	struct _bits {
		uint64_t m : 52; // mantissa
		unsigned e : 11; // exponent
		unsigned s : 1 ; // sign
	};
public:
	void setExponent(unsigned int /*trueValue*/encoded) {
		// true value --- encoded as --->
		// signed zero (m=0)/subnormals (m!=0) -> 0
		// -1022 -> 1
		//  1023 -> 2046
		// infinity (m=0)/ NaN (m!=0)     -> 0x7ff (2047)
		// unsigned int encoded = trueValue + exponent_bias;
		assert(encoded>0);
		assert(encoded<0x7ff);
		_bits.e = encoded;
	}
};

constexpr unsigned POSITIVE=0;
constexpr unsigned NEGATIVE=1;

#include <iomanip>
int main()
{
	std::random_device rd;
	std::mt19937 rng(rd());
	std::uniform_int_distribution<uint64_t> mantissa_dist;
	std::bernoulli_distribution sign_dist;
	std::geometric_distribution<> exponent_dist;

	cout << std::fixed << std::setprecision(80);
	for(int i =0;i<1000000;i++)
	{
		double_cast d;
		d._bits.m = mantissa_dist(rng);
		auto exponent = 0;
//	do
//	{
		exponent = exponent_dist(rng);
//	} while(exponent == 0);

		d.setExponent(1022-exponent);
		d._bits.s = sign_dist(rng);
//	if(d.v>=1)
//	    i--;
//	else
		cout << d.v << endl;
	}
	// so far we have a uniform random variable, do a LN to it (as specificed below), add it to the function, then clamp it. p.11


	// the uniform is positive
	// generate exponent: geometric distribution with paramter 0.5
	// generate significancd: uniform from {0,1}^52, that is: 52 bernoullis
	// take the special LN [dDLM07, CRL]
	// multiply by lambda
	// generation sign uniformly at random

	return 0;
}

// [dDLM07] Florent de Dinechin, Christoph Quirin Lauter, and Jean-Michel Muller. Fast and correctly rounded logarithms in double-precision. Theoretical Informatics and Applications, 41(1):85– 102, 2007.
// Correctly rounded mathematical library. http://lipforge.ens-lyon.fr/www/crlibm/
#endif
