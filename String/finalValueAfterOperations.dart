int finalValueAfterOperations(List<String> operations) {
  int result = 0;
  for (String word in operations) {
    if (word.contains('++')) {
      ++result;
    } else if (word.contains('--')) {
      --result;
    }
  }
  return result;
}

void main() {
  print(finalValueAfterOperations(["++X", "++X", "X++"]));
}
