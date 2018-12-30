#include <string>
#include <vector>
#include <stdlib.h>
#include <iostream>

using namespace std;

class Solution {
public:
  bool isAdditiveNumber(string num) {
    return this->isAdditiveNumberHelper(num, 0, vector<int>());
  }
private:
  bool isAdditiveNumberHelper(string num, int idx, vector<int> sequenceSoFar) {
    cout << "Num = " << num << " idx = " << idx << " SEQ ";
    for (int i = 0; i  < sequenceSoFar.size(); i++) {
      cout << sequenceSoFar[i] << ", ";
    }
    cout << endl;
    if (sequenceSoFar.size() < 2) {
      int summed = (int)num.size() / 2;
      for (int i = 1; i < num.size(); i++) {
	int numToAdd = atoi(num.substr(idx, i).c_str());
	vector<int> copyOfSequence = vector<int>(sequenceSoFar.size());
	copy(sequenceSoFar.begin(), sequenceSoFar.end(), copyOfSequence.begin());
	copyOfSequence.push_back(numToAdd);
	if (this->isAdditiveNumberHelper(num, idx + i, copyOfSequence)) {
	  return true;
	}
      }
      return false;
    } else {
      if (idx >= num.size()) {
	if (sequenceSoFar.size() > 2) {
	  return true;
	} else {
	  return false;
	}
      }
      int N = sequenceSoFar.size();
      int sumOfPrev2 = sequenceSoFar[N-1] + sequenceSoFar[N-2];
      cout << "Sum of Previous 2=" << sumOfPrev2 << endl;
      for(int i = 1; i <= (num.size()-idx) && atoi(num.substr(idx, i).c_str()) <= sumOfPrev2; i++) {
	int curr = atoi(num.substr(idx, i).c_str());
	cout << "curr=" << curr << endl;
	if (curr == 0) {
	  return false;
	}
	if (curr == sumOfPrev2) {
	  auto copyOfSequence = vector<int>(sequenceSoFar.size());
	  copy(sequenceSoFar.begin(), sequenceSoFar.end(), copyOfSequence.begin());
	  copyOfSequence.push_back(curr);
	  if (this->isAdditiveNumberHelper(num, idx+i, copyOfSequence)) {
	    return true;
	  }
	}
      }
      return false;
    }
  }
};

void tc_fib() {
  cout << "---Fib Test Case---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("112358");
  cout << "Additive? " << res << endl;
}

void tc_with_zeroes() {
  cout << "---With zeroes Test Case---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("199100199");
  cout << "Additive? " << res << endl;
}


void tc_should_fail_with_repeating_nums() {
  cout << "---Fails with leading zeroes Test Case---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("111");
  cout << "Additive? " << res << endl;
}

void tc_should_fail_with_a_repeating_zero() {
  cout << "---Fails with a potential for a leading 0---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("1103");
  cout << "Additive? " << res << endl;
}

void tc_should_fail_not_enough_digs() {
  cout << "---Fails with not enough digits---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("11");
  cout << "Additive? " << res << endl;
}

void tc_should_pass_with_huge_seqs() {
  cout << "---Should Pass with big digits---" << endl;
  auto solution = Solution();
  auto res = solution.isAdditiveNumber("444555999");
  cout << "Additive? " << res << endl;
}

int main() {
  tc_fib();
  tc_with_zeroes();
  tc_should_fail_with_repeating_nums();
  tc_should_fail_with_a_repeating_zero();
  tc_should_fail_not_enough_digs();
  tc_should_pass_with_huge_seqs();
}
