void main() {
  String sentence = "hello world dart programming";
  print("The reversed word of $sentence is : ${reverseSentence(sentence)}");
}

String reverseSentence(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+)'));
  List<String> reverseWords = words.reversed.toList();
  return reverseWords.join(' ');
}
