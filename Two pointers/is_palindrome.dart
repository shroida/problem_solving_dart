bool isPalindrome(String s, int m) {
  int l = m - 1, r = m + 1;
  if (s.length.isEven) {
    return s.substring(0, m + m) ==
        s.substring(m + m, s.length).split('').reversed.join();
  }
  for (var i = 0; i < m; i++) {
    if (s[l] != s[r]) {
      return false;
    }
    l--;
    r++;
  }
  return true;
}

bool hasPalindrome(String s) {
  for (var i = 1; i < s.length; i++) {
    if (isPalindrome(s, i)) {}
  }
  return false;
}

void main() {
  // print(isPalindrome('amanaplanacanalpanama'));
  // print(isPalindrome('race a car'));
  // print(isPalindrome(' '));
  // print(isPalindrome('racecart'));
}
