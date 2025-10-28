// Program to find the sum of all digits in a number
// & the occurrence (frequency) of a specific digit in that number

void main() {
  int number = 127342583267158;
  int sum = 0, count = 0, digitToCount = 2;
  int temp = number.abs();
  List<int> digitsCount = List.filled(10, 0);

  while (temp > 0) {
    int digit = temp % 10;
    sum += digit;
    digitsCount[digit]++;

    if (digit == digitToCount) {
      count++;
    }

    temp ~/= 10;
  }

  print("Number: $number");
  print("Sum of all digits: $sum");
  print("Occurrence of digit $digitToCount: $count");
  print('\nOccurrences of each digit:');
  for (int i = 0; i < 10; i++) {
    if (digitsCount[i] > 0) {
      print('Digit $i occurs ${digitsCount[i]} time(s)');
    }
  }
}
