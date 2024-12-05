//Example 1:
// Input: jewels = "aA", stones = "aAAbbbb"
// Output: 3

// Example 2:
// Input: jewels = "z", stones = "ZZ"
// Output: 0

int numJewelsInStones(String jewels, String stones) {
  int result = 0;
  for (int i = 0; i < stones.length; i++) {
    if (jewels.contains(stones[i])) {
      result += 1;
    }
  }
  return result;
}

void main() {
  print(numJewelsInStones('aA', 'aAAbbbb')); //3
}
