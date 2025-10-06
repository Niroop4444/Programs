void main() {
  int inputNumber = 121;
  print(
    "Is the Integer($inputNumber) a Palindrome? ${isPalindrome(inputNumber)}",
  );
}

bool isPalindrome(int number) {
  return int.parse(number.toString().split('').reversed.join()) == number;
}
