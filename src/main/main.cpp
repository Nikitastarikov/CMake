//#include "SimpleConfig.h"
#include "cxxopts.hpp"
#include "lib.hpp"
#include <iostream>
#include <utility>
#include <cstdlib>
#include <string>

using namespace std;
using namespace simplelib;

void my_education(double a, double b, double c)
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


int main(int argc, char** argv)
{

	cxxopts::Options options("test", "A brief description");

    options.add_options()
    	("a,args", "Arguments for mathematical calculations", cxxopts::value<vector<double>>())
        ("h,help", "Print usage")
    ;

    auto result = options.parse(argc, argv);

    if (result.count("help"))
    {
      std::cout << options.help() << std::endl;
      exit(0);
    }

    if (result.count("args"))
    {
    	vector<double> vector_args(result["args"].as<std::vector<double>>());

		if (vector_args.size() == 3)
		{
			my_education(vector_args[0], vector_args[1], vector_args[2]);
		}
		else if (vector_args.size() == 2)
		{
			cout << vector_args[0] << " V " << vector_args[1] << " is " << sum(vector_args[0], vector_args[1]) << endl;
		}
		else 
		{
			cerr << "Arguments for mathematical calculations\n\t2 args - sum\n\t3 args - quadratic_equation" << endl;
			return -1;
		}
    }

	return 0;
}