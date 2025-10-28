// Program to calculate the GCD (Greatest Common Divisor) and
// LCM (Least Common Multiple) of two predefined numbers.

void main() {
  int num1 = 36;
  int num2 = 60;

  // Calculate GCD using Euclidean algorithm
  int gcd = findGCD(num1, num2);

  // Calculate LCM using the relationship between GCD and LCM
  int lcm = (num1 * num2) ~/ gcd;

  print('Number 1: $num1');
  print('Number 2: $num2');
  print('GCD (Greatest Common Divisor) = $gcd');
  print('LCM (Least Common Multiple) = $lcm');
}

int findGCD(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}
