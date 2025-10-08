void main() {
  int n = 10;
  print("The $nᵗʰ fibonacci number is : ${fibonacci(n)}");

  for (int i = 0; i <= n; i++) {
    print("Fibonacci($i) = ${fibonacci(i)}");
  }
}

int fibonacci(int n) {
  if (n <= 1) return n;

  int a = 0, b = 1;
  for (int i = 2; i <= n; i++) {
    int next = a + b;
    a = b;
    b = next;
  }
  return b;
}
