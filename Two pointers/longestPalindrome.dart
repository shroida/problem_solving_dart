void longestPalindrome(List<int> nums, int k) {
  nums.insertAll(0, nums.sublist(nums.length - k, nums.length));
  for (var i = 0; i < k; i++) {
    nums.removeAt(nums.length - 1);
  }
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  longestPalindrome(list, 3); // [5,6,7,1,2,3,4]
  print(list);
}
