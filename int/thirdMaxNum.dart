int thirdMax(List<int> nums) {
  List<int> uniqueNumbers = nums.toSet().toList();
  uniqueNumbers.sort();
  return uniqueNumbers[uniqueNumbers.length - 3];
}

void main() {
  print(thirdMax([1, 2, 3, 6, 5, 4, 9, 8, 7, 8, 9, 7, 4, 5, 6, 6, 3, 2, 1]));
}
