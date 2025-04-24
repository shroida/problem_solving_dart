int findClosestNumber(List<int> nums) {
  if (nums.isEmpty) return 0;
  int closest = nums[0].abs();

  for (var n in nums) {
    if (n.abs() < closest) {
      closest = n.abs();
    }
  }
  return closest;
}

void main() {
  int closest = findClosestNumber([-4, 1, 0, 4, 8]);
  print(closest);
}
