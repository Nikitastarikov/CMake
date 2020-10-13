#include <cmath>
#include <iostream>
#include "lib.hpp"

namespace simplelib {
	int operator==(std::pair<double, double> const &Pair_one, std::pair<double, double> const &Pair_two)
	{
		if (Pair_one.first == Pair_two.first && Pair_one.second == Pair_two.second)
			return 0;
		
		return -1;
	}

	double sum(double a, double b)
	{
		return a + b;
	}

	int quadratic_equation(double a, double b, double c, std::pair<double, double> &Pair)
	{
		double D = b * b - 4 * a * c;

		if (D >= 0)
		{
			Pair.first = (-b + sqrt(D)) / (2 * a);
			Pair.second = (-b - sqrt(D)) / (2 * a);

			return 0;
		}

		return -1;
	}
}
