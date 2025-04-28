int threeSumClosest(List<int> nums, int target) {
  nums.sort();
  int closestSum = nums[0] + nums[1] + nums[2];

  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int mid = (left + right) ~/ 2; 

    int currentSum = nums[left] + nums[mid] + nums[right];

    if ((currentSum - target).abs() < (closestSum - target).abs()) {
      closestSum = currentSum;
    }

    if (currentSum < target) {
      left++;
    } else if (currentSum > target) {
      right--;
    } else {
      return currentSum;
    }
  }
  return closestSum;
}

void main() {
  print(threeSumClosest([-4, -1, 0, 3, 10], 2));
}
