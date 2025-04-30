int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}

void main() {
  print(singleNumber([2, 2, 1])); // Output: 1
  print(singleNumber([4, 1, 2, 1, 2])); // Output: 4
  print(singleNumber([1])); // Output: 1
}
