#include <iostream>
#include <vector>

using namespace std;

class NumMatrix {
public:
  NumMatrix(vector<vector<int>> matrix) {
    int rows = matrix.size();
    if (rows == 0) {
      return;
    }
    int cols = matrix[0].size();
      
    for(int row = 0; row < rows; row++) {
      vector<int> new_row = vector<int>();
      for (int c = 0; c < cols; c++) {
	new_row.push_back(0);
      }
      this->matrix_area_lookup.push_back(new_row);
    }

    for(int row = 0; row < rows; row++) {
      for(int col = 0; col < cols; col++) {
	if (row - 1 >= 0) {
	  this->matrix_area_lookup[row][col] += this->matrix_area_lookup[row-1][col];
	}

	if (col - 1 >= 0) {
	  this->matrix_area_lookup[row][col] += this->matrix_area_lookup[row][col-1];
	}

	if (row - 1 >= 0 && col - 1 >= 0) {
	  this->matrix_area_lookup[row][col] -= this->matrix_area_lookup[row-1][col-1];
	}

	this->matrix_area_lookup[row][col] += matrix[row][col];
      }
    }
  }

  void printLookup() {
    int rows = this->matrix_area_lookup.size();
    int cols = this->matrix_area_lookup[0].size();
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
	cout << this->matrix_area_lookup[i][j] << ", ";
      }
      cout << endl;
    } 
  }
    
  int sumRegion(int row1, int col1, int row2, int col2) {
    if (this->matrix_area_lookup.size() == 0 || this->matrix_area_lookup[0].size() == 0) {
      return 0;
    }
    return
      this->matrix_area_lookup[row2][col2] -
      ((row1 - 1 >= 0 ? this->matrix_area_lookup[row1-1][col2] : 0)) -
      ((col1 - 1 >= 0 ? this->matrix_area_lookup[row2][col1-1] : 0)) +
      ((row1 - 1 >= 0 && col1 - 1 >= 0 ? this->matrix_area_lookup[row1-1][col1-1] : 0));
  }
private:
  vector<vector<int>> matrix_area_lookup = vector<vector<int>>();
};

int main() {
  // vector<int> row1 = {3, 0, 1, 4, 2};
  // vector<int> row2 = {5, 6, 3, 2, 1};
  // vector<int> row3 = {1, 2, 0, 1, 5};
  // vector<int> row4 = {4, 1, 0, 1, 7};
  // vector<int> row5 = {1, 0, 3, 0, 5};
  auto testM = vector<vector<int>>();
  testM.push_back({});
  // testM.push_back(row1);
  // testM.push_back(row2);
  // testM.push_back(row3);
  // testM.push_back(row4);
  // testM.push_back(row5);
  NumMatrix nm = NumMatrix(testM);
  cout << nm.sumRegion(0, 0, 0, 0);
  // int sum = nm.sumRegion(2, 1, 4, 3);
  // cout << "Sum=" << sum << endl;
  // cout << nm.sumRegion(0, 0, 0, 0);
}
