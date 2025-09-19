void main() {
  String inputString = "lleetcode";
  print(
    "First non-repeating character index in $inputString is : ${firstUniqChar(inputString)}",
  );
}

String? firstUniqChar(String s) {
  Map<String, int> charCount = {};
  for (var c in s.split('')) {
    charCount[c] = (charCount[c] ?? 0) + 1;
  }

  for (var c in s.split('')) {
    if (charCount[c] == 1) return c;
  }

  return null;
}
