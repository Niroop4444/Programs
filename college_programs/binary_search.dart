// Program to perform a Binary Search on a predefined array.

import 'dart:io';

void main() {
  List<int> numbers = [25, 7, 42, 3, 18, 30, 12, 21, 56, 70];

  numbers.sort();

  stdout.write('Enter the number to search: ');
  int target = int.parse(stdin.readLineSync()!);

  int result = binarySearch(numbers, target);

  if (result != -1) {
    print('✅ Element $target found at position ${result + 1} (index $result).');
  } else {
    print('❌ Element $target not found in the array.');
  }
}

int binarySearch(List<int> list, int target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}
