int distinctAverages(List<int> nums) {
  nums.sort();
  Set<double> averages = {};
  while (nums.isNotEmpty) {
    double average = (nums.first + nums.last) / 2;
    averages.add(average);
    nums.removeAt(0);
    if (nums.isNotEmpty) nums.removeLast();
  }
  return averages.length;
}

void main() {
  print(distinctAverages([4, 1, 4, 0, 3, 5]));
}
