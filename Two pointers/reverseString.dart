void reverseString(List<String> s) {
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    String temp = s[left];
    s[left] = s[right];
    s[right] = temp;
    right--;
    left++;
  }
}

void main() {
  // Test Case 1
  List<String> s1 = ["h", "e", "l", "l", "o"];
  reverseString(s1);
  print(s1); // Output: ["o","l","l","e","h"]

  // Test Case 2
  List<String> s2 = ["H", "a", "n", "n", "a", "h"];
  reverseString(s2);
  print(s2); // Output: ["h","a","n","n","a","H"]

  // Edge Case: Empty string
  List<String> s3 = [];
  reverseString(s3);
  print(s3); // Output: []

  // Edge Case: Single character
  List<String> s4 = ["a"];
  reverseString(s4);
  print(s4); // Output: ["a"]
}
