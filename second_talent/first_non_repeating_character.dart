void main() {
  String text = "Swiss";
  print(
    "The first non repeating character is " + firstNonRepeatingCharacter(text),
  );
}

String firstNonRepeatingCharacter(String text) {
  final charCount = <String, int>{};

  for (final char in text.toLowerCase().split("")) {
    charCount.update(char, (count) => count + 1, ifAbsent: () => 1);
  }

  for (final char in text.split('')) {
    if (charCount[char] == 1) {
      return char;
    }
  }

  return '';
}
