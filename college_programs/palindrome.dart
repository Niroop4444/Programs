// Program to check if the given string is a Palindrome or not.

void main() {
  String str = "Madam";

  String normalized = str.toLowerCase();

  String reversed = normalized.split('').reversed.join('');

  if (normalized == reversed) {
    print('"$str" is a Palindrome.');
  } else {
    print('"$str" is not a Palindrome.');
  }
}
