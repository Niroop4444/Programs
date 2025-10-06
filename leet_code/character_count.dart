void main() {
  String text = "hello world dart programming";
  Map<String, int> characterCounts = countCharacters(text);

  print('Original text: "$text"');
  print('Character counts:');
  characterCounts.forEach((char, count) {
    print("'$char': $count");
  });
}

Map<String, int> countCharacters(String text) {
  Map<String, int> counts = {};

  String processedText = text.toLowerCase().replaceAll(" ", '');

  for (int i = 0; i < processedText.length; i++) {
    String char = processedText[i];

    if (counts.containsKey(char)) {
      counts[char] = counts[char]! + 1;
    } else {
      counts[char] = 1;
    }
  }

  return counts;
}
