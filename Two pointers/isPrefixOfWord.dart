int isPrefixOfWord(String sentence, String searchWord) {
  List<String> words = sentence.split(' ');
  for (var i = 0; i < words.length; i++) {
    if (words[i].startsWith(searchWord)) {
      return i + 1;
    }
  }
  return -1;
}

void main() {
  print(isPrefixOfWord("i love eating burger", "bur")); //cbadefihgjk
}
