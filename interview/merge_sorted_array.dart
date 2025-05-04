void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int p1 = m - 1; // Last index of real data in nums1
  int p2 = n - 1; // Last index in nums2
  int p = m + n - 1; // Last index of nums1's full size
  //  [1, 2, 3, 0, 0, 0]
  //  [2, 5, 6]
  while (p1 >= 0 && p2 >= 0) {
    if (nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else {
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }

  // If there are leftover elements in nums2
  while (p2 >= 0) {
    nums1[p] = nums2[p2];
    p2--;
    p--;
  }
}

void main() {
  List<int> nums1 = [1, 2, 3, 0, 0, 0];
  List<int> nums2 = [2, 5, 6];
  merge(nums1, 3, nums2, 3);

  print(nums1); // Output: [1, 2, 2, 3, 5, 6]
}
