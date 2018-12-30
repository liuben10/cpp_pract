#include <iostream>
#include "something.hpp"

using namespace std;

Something::Something(int x) {
  this->x = x;
}

int main() {
  Something *s = new Something(10);
  cout << s->x << endl;
}
