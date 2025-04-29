String findTheDifference(String s, String t) {
  List<String> res = [];
  int greaterLength = s.length < t.length ? t.length : s.length;
  for (var i = 0; i < greaterLength; i++) {
    if (!s.contains(t[i])) res.add(t[i]);
  }
  return res.join('');
}

void main() {
  print(findTheDifference('abcd', 'abcde'));
}
// [ a , b , c , d ]
// [               ]