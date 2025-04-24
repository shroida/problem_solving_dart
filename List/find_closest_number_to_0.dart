int findClosestNumber(List<int> nums) {
  if (nums.isEmpty) return 0;

  int closestNum = nums[0]; //-4
  int minDistance = nums[0].abs(); //4

  for (int num in nums) {
    int currentDistance = num.abs();
    if (currentDistance < minDistance) {
      minDistance = currentDistance;
      closestNum = num;
    } else if (currentDistance == minDistance) {
      if (num > closestNum) {
        closestNum = num;
      }
    }
  }
  return closestNum;
}

void main() {
  int closest = findClosestNumber([-4, 1, 0, 4, 8]);
  print(closest);
}
