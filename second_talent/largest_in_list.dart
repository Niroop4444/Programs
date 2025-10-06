void main() {
  List<int> numbers = [11, 52, 33, 54, 51];
  print(
    "The largest number in the list $numbers is ${largestNumber(numbers)} and using sort ${largestUsingSort(numbers)} and second largest is ${secondLargest(numbers)}",
  );
}

int largestNumber(List<int> numbers) {
  return numbers.reduce((a, b) => a > b ? a : b);
}

int largestUsingSort(List<int> numbers) {
  numbers.sort();
  return numbers.last;
}

int secondLargest(List<int> numbers) {
  numbers.sort();
  return numbers[numbers.length - 2];
}
