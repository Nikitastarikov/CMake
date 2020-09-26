#include "libcryptographic.hpp"
#include <cstdlib>
#include <iostream>
#include <cmath>
#include <map>
#include <typeinfo>

#define RANGE 1000000000
using namespace std;

void Algorithm_0()
{
	long long i = rand() % RANGE;
	long long j = rand() % RANGE;
	long long k = rand() % RANGE + 1;

	cout << "the algorithm of fast exponentiation modulo:" << endl;
	cout << i << "^" << j << " mod " << k << " = " << modulo_multiplication(i, j, k) << endl;
}

void Algorithm_1()
{
	long long a = rand() % RANGE;
	long long b = rand() % RANGE;

	cout << "the algorithm Evclida:" << endl;
	cout << "a = " << a << " b = " << b << endl << endl; 

	long long U[3] = {a, 1, 0};
	evclid_algorithm(a, b, U);

	if ((a * U[1] + b * U[2]) == U[0])
	{
		cout << "the answer is correct" << endl;
		cout << "NOD(" << a << ", " << b << ") = " << U[0] << endl;
		cout << "x = " << U[1] << endl;
		cout << "y = " << U[2] << endl;
	} 
	else 
	{
		cout << "the answer is incorrect" << endl;
	}
}

void Algorithm_2()
{
	cout << "the algorithm Diffie-Hellman:" << endl;

	long long p = 0;
	long long q = 0;
	long long g = 0;
	long long Xa = 0;
	long long Xb = 0;
	long long Ya = 0;
	long long Yb = 0;
	long long Za = 0;
	long long Zb = 0;
	
	do {
		p = rand() % RANGE + 1;
		q = rand() % RANGE + 1;
	} while (!isPrime(p) || !isPrime(q) || (p != (2 * q + 1))); //исправить

	Xa = rand() % (p - 1) + 1;
	Xb = rand() % (p - 1) + 1;
	
	do {
		g = rand() % (p - 1) + 2;
	} while (modulo_multiplication(g, q, p) == 1);

	Ya = modulo_multiplication(g, Xa, p);
	Yb = modulo_multiplication(g, Xb, p);

	Za = modulo_multiplication(Yb, Xa, p);
	Zb = modulo_multiplication(Ya, Xb, p);
	
	cout << "Data public: " << endl;
	cout << "p = " << p << endl;
	cout << "q = " << q << endl;
	cout << "Ya = " << Ya << endl;
	cout << "Yb = " << Yb << endl;
	cout << "g = " << g << endl << endl;

	cout << "Data private: " << endl;
	cout << "Xa = " << Xa << endl;
	cout << "Xb = " << Xb << endl << endl;

	if (Za == Zb)
	{
		cout << "the answer is correct" << endl;
		cout << "Za = " << Za << endl;
		cout << "Zb = " << Zb << endl;
	}
	else
	{
		cout << "the answer is incorrect" << endl;
	}
}

void Algorithm_3()
{
	cout << "the algorithm Baby step, giant step" << endl;

	long long m = 0;
	long long k = 0;
	long long a = rand() % RANGE;
	long long y = rand() % RANGE;
	long long p = 0;
	long long x = 0;
	long long res_y = 0;

	do
	{
		p = rand() % RANGE + 1;
	} while (!isPrime(p) || y >= p);
	
	m = (long long)sqrt(p) + 1;
	k = (long long)sqrt(p) + 1;

	cout << a << "^x" << " mod " << p << " = " << y << endl; 
	cout << "m = " << m << endl;
	cout << "k = " << k << endl;

	x = baby_step_giant_step(y, a, p, m, k);
	
	if (x == -1)
	{
		cout << "no equal members found" << endl;
	}
	else
	{
		res_y = modulo_multiplication(a, x, p);
		cout << "x = " << x << endl;
		cout << "y = " << res_y << endl;
		if (res_y == y) 
		{
			cout << "good" << endl;
		}
	}
	
}

long long modulo_multiplication_recurs(long long digit, long long degree, long long mod)
{
	if (digit == 0) 
		return 1;

	long long current_val_series = modulo_multiplication_recurs(digit, degree >> 1, mod);

	if (degree % 2 == 0)
		return (current_val_series * current_val_series) % mod;
		
	return (digit * current_val_series * current_val_series) % mod;
}

long long modulo_multiplication(long long digit, long long degree, long long mod) //i^j mod k
{
	long long check_line = degree;
	long long current_val_series = digit;// хранит текущее значение ряда
	long long result = 1;

	while (check_line != 0)
	{
		if (check_line & 1)
		{
			result = (result * digit) % mod;
		}
	
		digit = (digit * digit) % mod;
		check_line = check_line >> 1;   
	}

	return result;
}

void evclid_algorithm(long long a, long long b, long long U[3])
{

	long long V[3] = {b, 0, 1};
	long long T[3] = {0, 0, 0};
	long long q = 0, size = 3;

	while (V[0] != 0)
	{
		q = U[0] / V[0];
		T[0] = U[0] % V[0];
		T[1] = U[1] - q * V[1];
		T[2] = U[2] - q * V[2];

		for (int i = 0; i < size; i++)
		{
			U[i] = V[i];
			V[i] = T[i];
		}
	}
}

bool isPrime(long long p)
{
	if (p <= 1) return false;
	 
	long long b = (long long) pow(p, 0.5); 

	for(int i = 2; i <= b; i++)
	{
	  if ((p % i) == 0) return false;        
	}     
	 
   return true;    
}

long long baby_step_giant_step(long long y, long long a, long long p, long long m, long long k)
{
	std::map<long long, long long> Map;
	long long current_val_series = 0;
	long long I = 1;
	long long J = 0;
	long long x = -1;

	for (long long i = 0; i < m; i++) // J
	{
		current_val_series = modulo_multiplication(a, i, p) * y % p;
		Map[current_val_series] = i;
	}

	for(long long i = 1; i <= k; i++) // I
	{
		current_val_series = modulo_multiplication(a, (i * m), p);
		if(Map.count(current_val_series))
		{
			I = i;
			J = Map[current_val_series];
			x = I * m - J;
			break;
		}
	}	

 	return x;
}