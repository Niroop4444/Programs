void main() {
  String text = "hello world dart programming";
  Map<String, int> wordCounts = countWords(text);

  print('Original text: "$text"');
  print('Word counts:');
  wordCounts.forEach((word, count) {
    print("'$word': $count");
  });
}

Map<String, int> countWords(String text) {
  final counts = <String, int>{};
  for (final word in text.toLowerCase().split(' ')) {
    counts.update(word, (count) => count + 1, ifAbsent: () => 1);
  }

  return counts;
}
