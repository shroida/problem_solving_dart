void reverseVowels(String s) {
  final chars = s.split('');
  int left = 0, right = chars.length - 1;

  while (left < right) {
    if (!isVowel(chars[left]))
      left++;
    else if (!isVowel(chars[right]))
      right--;
    else {
      // Swap vowels
      final temp = chars[left];
      chars[left++] = chars[right];
      chars[right--] = temp;
    }
  }
  print(chars.join());
}

bool isVowel(String s) => s.length == 1 && 'aeiouAEIOU'.contains(s);

void main() {
  // Test Case 1
  reverseVowels("IceCreAm"); // Output: AceCreIm
  // Test Case 2
  reverseVowels("hello"); // Output: holle
  // Test Case 3
  reverseVowels("leetcode"); // Output: leotcede
}
