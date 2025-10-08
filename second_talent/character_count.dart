void main() {
  String text = "hello world dart programming";
  print("Frequency of words in a $text is ${countCharacters(text)}");
}

Map<String, int> countCharacters(String text) {
  final counts = <String, int>{};

  for (final char in text.toLowerCase().split('')) {
    if (char.trim().isEmpty) continue;

    counts.update(char, (count) => count + 1, ifAbsent: () => 1);
  }

  return counts;
}
