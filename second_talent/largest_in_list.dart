void main() {
  List<int> numbers = [11, 52, 33, 54, 51];
  print("The largest number in the list $numbers is ${largestNumber(numbers)}");
}

int largestNumber(List<int> numbers) {
  return numbers.reduce((a, b) => a > b ? a : b);
}
