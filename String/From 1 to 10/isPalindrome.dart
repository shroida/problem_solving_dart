// Example 1:

// Input: s = "A man, a plan, a canal: Panama"
// Output: true
// Explanation: "amanaplanacanalpanama" is a palindrome.
// Example 2:

// Input: s = "race a car"
// Output: false
// Explanation: "raceacar" is not a palindrome.
// Example 3:

// Input: s = " "
// Output: true
// Explanation: s is an empty string "" after removing non-alphanumeric characters.
// Since an empty string reads the same forward and backward, it is a palindrome.
bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r'[ ,:]'), '').toLowerCase();

  int midLength = s.length;
  if (s.length.isEven &&
      s.substring(0, midLength) ==
          s.substring(midLength, s.length).split('').reversed.join('')) true;
  return false;
}

void main() {
  String word = "A man, a plan, a canal: Panama";
  word = word.replaceAll(RegExp(r'[ ,:]'), '').toLowerCase();
  print(word);
  word.substring(10, word.length).split('').reversed.join('');
  print(word);
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car")); // false
  print(isPalindrome(" ")); // true
}
