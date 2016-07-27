#include <iostream>
#include <vector>
#include <cstdlib>

const int N = 1000000;

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
main (int argc, char **argv)
{
  int num, len, sum = 0, results = 0, k;
  bool flag;
  sieve();

  for (int i = 4; i < primes.size(); ++i) {
    k = 10;
    flag = true;
    num = primes[i];

    while (num /= 10) {
      if (!is_prime[num])
        flag = false;
    }

    num = primes[i];
    while (k < num) {
      if (!is_prime[num % k])
        flag = false;
      k *= 10;
    }
    if (flag) {
      sum += primes[i];
      results++;
      cout << num << "\n";
    }
    if (results == 11) break;
  }
  cout << "\n\n" << sum << "\n";
  return 0;
}
