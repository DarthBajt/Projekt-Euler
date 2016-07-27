#include <iostream>

using namespace std;

const int N = 1000000;

int
len_of_chain (long long n)
{
  int ret = 1;
  while (n != 1) {
    if (n % 2 == 0)
      n = n / 2;
    else
      n = n*3 + 1;
    ret++;
  }
  return ret;
}

int
main ()
{
  int max = 0, max_num = 0, len;
  for (int i = 2; i <= N; ++i) {
    len = len_of_chain(i);
    if (len > max) {
      max = len;
      max_num = i;
    }
  }
  cout << max << "\n" << max_num << "\n";
  return 0;
}
