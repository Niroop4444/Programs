void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("The sum of integers is: ${sumOfIntegers(numbers)}");
}

int sumOfIntegers(List<int> numbers) {
  return numbers.reduce((a, b) => a + b);
}
