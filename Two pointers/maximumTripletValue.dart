String reverseStr(String s, int k) {
  String res = "";

  for (var i = 0; i < s.length; i += 2 * k) {
    if (i + k <= s.length) {
      res += s.substring(i, i + k).split('').reversed.join();
      int end = (i + 2 * k < s.length) ? i + 2 * k : s.length;
      res += s.substring(i + k, end);
    } else {
      res += s.substring(i).split('').reversed.join();
    }
  }

  return res;
}

void main() {
  print(reverseStr("abcdefghij", 3)); //cbadefihgjk
}
