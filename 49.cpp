#include <iostream>
#include <vector>
#include <cstring>
#include <cstdio>
#include <algorithm>

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
main ()
{
  int n;
  char buf[30], n1[8], n2[8];
  sieve();
  for (int i = 1; i < 10000; ++i) {
    n = primes[i] + 3330;
    if (is_prime[n]) {
      n += 3330;
      if (is_prime[n]) {
        n = primes[i];
        sprintf(buf, "%d%d%d", n, n + 3330, n + 6660);
        if (strlen(buf) == 12) {
          cout << buf << "\n";
          sort(buf, buf+12);
          cout << buf << "\n\n";
        }
      }
    }
  }
  return 0;
}
