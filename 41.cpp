#include <iostream>
#include <vector>
#include <cstring>
#include <cstdio>
#include <algorithm>

const int N = 100000000;

using namespace std;

vector <int> primes;
bool is_prime[N + 1];

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
sum_of_digits (int n)
{
  int ret = 0;
  while (n) {
    ret += n % 10;
    n /= 10;
  }
  return ret;
}

int
main ()
{
  int result = 0;
  char buf[12];
  sieve();

  for (int i = primes.size()-1; i >= 0; --i) {
    sprintf(buf, "%d", primes[i]);
    sort(buf, buf+7);
    if (!strcmp(buf, "1234567")) {
      result = primes[i];
      break;
    }
  }
  cout << result << "\n";
  return 0;
}
