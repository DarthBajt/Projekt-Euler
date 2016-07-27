#include <iostream>
#include <vector>
#include <cstring>
#include <cstdio>
#include <algorithm>

using namespace std;

const int N = 10000000;

int
sum_of_digits_square (int n)
{
  int ret = 0, k;
  while (n) {
    k = n % 10;
    ret += k*k;
    n /= 10;
  }
  return ret;
}

int
main ()
{
  int count = 0, n;

  for (int i = 2; i < N; ++i) {
    n = i;
    while (n != 1) {
      n = sum_of_digits_square(n);
      if (n == 89) {
        count++;
        break;
      }
    }
  }
  cout << count << "\n";
  return 0;
}
