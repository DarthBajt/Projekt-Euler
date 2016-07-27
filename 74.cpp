#include <iostream>
#include <vector>
#include <cstring>
#include <cstdio>
#include <algorithm>

using namespace std;

const int N = 1000000;
const int K = 61;

int factorial[] = {
  1,
  1,
  2,
  6,
  24,
  120,
  720,
  5040,
  40320,
  362880
};

int terms[K];

int
sum_of_digits_factorial (int n)
{
  int ret = 0, k;
  if (n == 0) return 1;
  while (n) {
    ret += factorial[n % 10];
    n /= 10;
  }
  return ret;
}

void
clean_terms ()
{
  for (int i = 0; i < K; i++) {
    terms[i] = 0;
  }
}

int
contains (int n)
{
  for (int i = 0; i < K; i++) {
    if (terms[i] == n) {
      return true;
    }
  }
  return false;
}

int
main ()
{
  int result = 0, n, count;

  for (int i = 2; i < N; ++i) {
    count = 0;
    clean_terms();
    n = i;
    for (int j = 0; !contains(n); ++j) {
      terms[j] = n;
      n = sum_of_digits_factorial(n);
      count++;
    }
    if (count == 60) result++;
  }
  cout << result << "\n";
  return 0;
}
