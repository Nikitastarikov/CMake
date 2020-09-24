#include "SimpleConfig.h"
#ifdef USE_MYLIB
#include "lib.hpp"
#endif
#include <iostream>
#include <utility>
#include <cstdlib>

using namespace std;

int main(int argn, char **argv)
{
	double a = 0.0;
	double b = 0.0;
	double c = 0.0;
	
	if (argn == 4)
	{
		a = atof(argv[1]);
		b = atof(argv[2]);
		c = atof(argv[3]);

	}
	else 
	{
		cout << "the number of arguments must be 4" << endl;
		return -1;
	}

	auto Pair = make_pair<double, double>(0.0, 0.0);

	cout << endl;
	cout << a << " + " << b << " = " << sum(a, b) << endl;
	cout << endl;

	if (!quadratic_equation(a, b, c, Pair))
	{
		cout << "x1 = " << Pair.first << endl;
		cout << "x2 = " << Pair.second << endl;
	}
	else 
	{
		cout << "iscriminant less than 0, roots are insubstantial" << endl;
	}

	return 0;
}