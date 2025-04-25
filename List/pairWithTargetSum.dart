List<int> pairWithTargetSum(List<int> arr, int targetSum) {
  int left = 0;
  int right = arr.length - 1;
  //   l     r
  //  [2, 5, 9, 11]
  while (left < right) {
    //      11     =     2      +      9
    int currentSum = arr[left] + arr[right];
    // if 11 == 11
    if (currentSum == targetSum) {
      return [left, right];
      // if 11 == 11
    } else if (currentSum > targetSum) {
      --right;
    } else if (currentSum < targetSum) {
      ++left;
    }
  }
  return [];
}

void main() {
  print(pairWithTargetSum([1, 2, 3, 4, 6], 6)); // Output: [1, 3] (2 + 4 = 6)
  print(pairWithTargetSum([2, 5, 9, 11], 11)); // Output: [0, 2] (2 + 9 = 11)
}
