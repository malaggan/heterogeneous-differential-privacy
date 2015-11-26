#if 0
#include <iostream>
#include <cmath>
#include <random>

using std::cout;
using std::endl;

#include <cassert>

static constexpr int exponent_bias = 1023;
typedef union {
  double v;
  struct {
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
	e = encoded;
    }

} double_cast;

constexpr unsigned POSITIVE=0;
constexpr unsigned NEGATIVE=1;

// generate a random laplace as described in
// Ilya Mironov, On Significance of the Least Significant Bits For Differential Privacy

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
	d.m = mantissa_dist(rng);
	auto exponent = 0;
//	do
//	{
	     exponent = exponent_dist(rng);
//	} while(exponent == 0);

	d.setExponent(1022-exponent);
	d.s = sign_dist(rng);
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
