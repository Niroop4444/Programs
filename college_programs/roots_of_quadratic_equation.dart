// Find the roots of a quadratic equation ax² + bx + c = 0
// Program must calculate the discriminant, d = b² - 4ac
// Use conditional logic to determine the nature of the roots
// Quadratic formula x = (-b ± √(d)) / (2a) is then applied to find the roots

import 'dart:math';

void main() {
  // Coefficients of the quadratic equation : ax² + bx + c = 0
  double a = 1;
  double b = -3;
  double c = 2;

  // Discriminant calculation
  double d = b * b - 4 * a * c;

  print("Equation: ${a}x² + ${b}x + ${c} = 0");
  print("Discriminant (d) = $d");

  if (d > 0) {
    double root1 = (-b + sqrt(d)) / (2 * a);
    double root2 = (-b - sqrt(d)) / (2 * a);
    print("Roots are real and different. Root 1 = $root1, Root 2 = $root2");
  } else if (d == 0) {
    double root = -b / (2 * a);
    print("Roots are real and the same. Root = $root");
  } else {
    double realPart = -b / (2 * a);
    double imaginaryPart = sqrt(-d) / (2 * a);
    print(
      'The equation has two complex roots: Root 1 = $realPart + ${imaginaryPart}i, Root 2 = $realPart - ${imaginaryPart}i',
    );
  }
}
