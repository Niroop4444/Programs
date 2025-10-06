void main() {
  String inputString = "Aba";
  print(
    "Is the String($inputString) a Palindrome? ${isPalindrome(inputString)}",
  );
}

bool isPalindrome(String text) {
  String reveresedString = text.toLowerCase().split('').reversed.join();
  return text.toLowerCase() == reveresedString;
}
