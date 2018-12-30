#include <thread>
#include <iostream>

using namespace std;

typedef struct _container {
  int x;
} _container;

typedef _container* Container;

int main() {
  Container v = (Container)malloc(sizeof(_container));
  cout << v->x << endl;
  return 0;
}
