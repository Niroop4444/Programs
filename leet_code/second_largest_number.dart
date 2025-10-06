void main() {
  List<int> data = [10, 5, 20, 15, 8];
  print("The second largest number is: ${getSecondLargestNumber(data)}");
}

int getSecondLargestNumber(List<int> numbers) {
  List<int> uniqueNumbers = numbers.toSet().toList()..sort();
  return uniqueNumbers[uniqueNumbers.length - 2];
}
