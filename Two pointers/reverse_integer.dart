int reverse(int x) {
  List<String> listNums = x.toString().split('').reversed.toList();
  if (listNums.last == '-') {
    listNums.remove(listNums.last);
    listNums.insert(0, '-');
  }
  int reversedInt = int.parse(listNums.join());

  if (reversedInt < -2147483648 || reversedInt > 2147483647) {
    return 0;
  }

  return reversedInt;
}

void main() {
  print(reverse(-123456789));
  print(reverse(-123));
  print(reverse(120));
}
