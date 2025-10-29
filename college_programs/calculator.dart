// Design a Program that accepts two numbers and an operator (+, -, *, /)
// and performs the corresponding arithmetic operation.

import 'dart:io';

void main() {
  print('=== Simple Calculator ===\n');

  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      print("\nResult: $num1 + $num2 = $result");
      break;
    case '-':
      result = num1 - num2;
      print("\nResult: $num1 - $num2 = $result");
      break;
    case '*':
      result = num1 * num2;
      print("\nResult: $num1 * $num2 = $result");
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print("\nResult: $num1 / $num2 = $result");
      } else {
        print("\nError: Division by zero is not allowed.");
      }
      break;
    default:
      print("\nError: Invalid operator. Please use +, -, *, or /.");
  }
}
