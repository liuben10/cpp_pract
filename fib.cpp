#include <iostream>

using namespace std;

int fib(int n) {
  if (n == 0) {
    return 1;
  } else {
    return fib(n-1) + fib(n-2);
  }
}

int fast_fib() {
  int prev = 1;
  int cur = 1;
  for(int i = 0; i < 10; i++) {
    if (i >= 1) {
      int tmp = cur;
      cur = cur + prev;
      prev = tmp;
    }
  }
  return cur;
}

int main() {
  for(int i = 0; i < 10; i++) {
    cout << fast_fib() << endl;
  }
}
