String mergeAlternately(String word1, String word2) {
  String res = '';
  int minLength = word1.length < word2.length ? word1.length : word2.length;

  for (int i = 0; i < minLength; i++) {
    res += word1[i];
    res += word2[i];
  }

  if (word1.length > minLength) {
    res += word1.substring(minLength);
  } else if (word2.length > minLength) {
    res += word2.substring(minLength);
  }

  return res.toString();
}

void main() {
  String res = mergeAlternately('abc', 'pqr'); // apbqcr
  String res2 = mergeAlternately('ab', 'pqrs'); // apbqrs
  String res3 = mergeAlternately('abcd', 'pq'); // apbqcd

  print(res); // Output: apbqcr
  print(res2); // Output: apbqrs
  print(res3); // Output: apbqcd
}
