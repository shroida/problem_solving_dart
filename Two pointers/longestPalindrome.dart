String pairWithTargetSum(String s) {
  String result = '';
  int left = 0;
  int right = s.length;

  while (left < right) {
    // babad
    // l   r
    if (s[left] == s[right]) {
      --right;
      ++left;

      result += s[left];
      result.padLeft(result.length + 1, s[right]);
    } else if (s[left] != s[right]) {
      --right;
    } else if (s[left] != s[right]) {
      --right;
    }
  }

  return result;
}

void main() {
  print(pairWithTargetSum("babad")); // bab
  print(pairWithTargetSum("cbbd")); // bb
}
