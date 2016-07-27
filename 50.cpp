#include <iostream>
#include <vector>

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
  int max_prime = 0, max = 0, l = 0, sum = 0;
  sieve();

  for (int i = 0; i < 1000; ++i) {
    sum = 0;
    l = 0;
    for (int j = i; j < primes.size(); ++j) {
      sum += primes[j];
      l++;
      if (sum > N) break;
      if (is_prime[sum]) {
        if (l > max) {
          max = l;
          max_prime = sum;
        }
      }
    }
  }
  cout << "maksymalna: " << max_prime << "\nsklada sie z: " << max << "\n";
  return 0;
}
