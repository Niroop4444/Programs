/// Reverse the given string

void main() {
  String inputString = "Adjacent";
  print("Reversed string of $inputString is : ${reverseString(inputString)}");
}

String reverseString(String s) {
  var chars = s.split('');
  int i = 0, j = chars.length - 1;
  while (i < j) {
    String temp = chars[i];
    chars[i] = chars[j];
    chars[j] = temp;
    i++;
    j--;
  }

  return chars.join('');
}
