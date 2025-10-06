void main() {
  String text = "hello world dart programming";
  print("Frequency of words in a $text is ${countCharacters(text)}");
}

Map<String, int> countCharacters(String text) {
  Map<String, int> counts = {};

  List words = text.toString().toLowerCase().split('');
  for (String character in words) {
    counts[character] = (counts[character] ?? 0) + 1;
  }
  return counts;
}
