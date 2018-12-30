#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

class Solution {
public:
  int numSquares(int n) {
    vector<int> table = vector<int>(n+1, 0);
    vector<int> squares = vector<int>();
    for(int i = 1; i < n+1; i++) {
      int square = i*i;
      if (square <= n) {
	table[square] = 1;
	squares.push_back(square);
      }
    }

    for (int i = 1; i <= n; i++) {
      if (table[i] != 1) {
	vector<int> subproblems = vector<int>();
	for (int j = 0; j < squares.size(); j++) {
	  int square = squares[j];
	  if (i - square > 0) {
	    subproblems.push_back(table[i - square]);
	  }
	}
	// cout << "i=" << i << ", Subproblems Size = " << subproblems.size() << endl;
	int min_sub_problem = *min_element(begin(subproblems), end(subproblems));
	// cout << "Min=" << min_sub_problem << endl;
	table[i] = min_sub_problem + 1;
      }
    }

    return table[n];
  }
};


int main() {
  Solution solver = Solution();
  cout << solver.numSquares(13) << endl;
}
