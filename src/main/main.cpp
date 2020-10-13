#include "SimpleConfig.h"
#include "lib.hpp"
#include <iostream>
#include <utility>
#include <cstdlib>
#include <string>

using namespace std;
using namespace simplelib;

void myeducation(double a, double b, double c)
{
	auto Pair = make_pair(0.0, 0.0);	

	if (!quadratic_equation(a, b, c, Pair))
	{
		cout << "x1 is " << Pair.first << endl;
		cout << "x2 is " << Pair.second << endl;
	}
	else 
	{
		cout << "D < 0" << endl;
	}
}


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

		myeducation(a, b, c);
	}
	else if (argn == 3)
	{
		a = atof(argv[1]);
		b = atof(argv[2]);

		cout << a << " V " << b << " is " << sum(a, b) << endl;
	}
	else 
	{
		cout << "./Simple arg1 arg2- arg1 V arg2 is res" << endl;
		cout << "./Simple arg1 arg2 arg3- quadratic equation" << endl;
		return -1;
	}

	return 0;
}