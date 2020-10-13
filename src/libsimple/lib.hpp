#pragma once

#include <utility>

namespace simplelib {
	int operator==(std::pair<double, double> const &Pair_one, std::pair<double, double> const &Pair_two);
	double sum(double a, double b);
	int quadratic_equation(double a, double b, double c, std::pair<double, double> &Pair);
}