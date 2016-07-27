#include <iostream>
#include <vector>
#include <cstring>
#include <cstdio>
#include <algorithm>

const int N = 1000000;

using namespace std;

vector <int> primes;
bool is_prime[N + 1];

int
numbers_len (int n)
{
  int ret = 0;
  while (n > 0) {
    ret++;
    n /= 10;
  }
  return ret;
}

int ten_pow[] = {
  1,
  10,
  100,
  1000,
  10000,
  100000,
  1000000,
  10000000,
  100000000
};

void
sieve()
{
  is_prime[0] = false;
  is_prime[1] = false;
  for (int i = 2; i <= N; ++i) is_prime[i] = true;

  for (int i = 2; i*i <= N; ++i)
    if (is_prime[i])
      for (int j = 2*i; j <= N; j+=i)
        is_prime[j] = false;
  for (int i = 2; i <= N; ++i)
    if (is_prime[i])
      primes.push_back(i);
}

int
main ()
{
  int how_many = 0;
  bool flag;
  sieve();
  for (int i = 0; i <  primes.size(); ++i) {
    flag = true;
    int num = primes[i];
    int len = numbers_len(num);
    int mul = ten_pow[len-1];
    for (int j = 0; j < len; ++j) {
      int r = num / mul;
      num = (num % mul) * 10 + r;
      if (!is_prime[num])
        flag = false;
    }
    if (flag)
      how_many++;
  }
  cout << how_many << endl;
  return 0;
}
