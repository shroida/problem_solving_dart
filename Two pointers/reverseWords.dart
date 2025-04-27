String reverseWord(String word, int k) {
  final chars = word.split('');
  int left = 0, right = k < chars.length - 1 ? k + 1 : chars.length - 1;

  while (left < right) {
    final temp = chars[left];
    chars[left++] = chars[right];
    chars[right--] = temp;
  }
  return chars.join();
}

void main() {
  print(reverseWord("abcdefg", 2));
}
