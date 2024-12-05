int scoreOfString(String s) {
  int result = 0;
  for (int i = 0; i < s.length - 1; ++i) {
    int currentASCIIValue = s.codeUnitAt(i) - s.codeUnitAt(i + 1);
    result += currentASCIIValue.abs();
  }
  return result;
}

void main() {
  print(scoreOfString("hello"));
}
