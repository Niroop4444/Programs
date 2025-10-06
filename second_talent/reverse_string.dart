void main() {
  String inputString = "Adjacent";
  print("Reversed string of $inputString is : ${reverseString(inputString)}");
}

String reverseString(String text) {
  return text.split('').reversed.join();
}
