void main() {
  int n = 10;
  print("The $n-th Fibonacci number is: ${fib(n)}");
}

Map<int, int> memo = {};

int fib(int n) {
  if (n <= 1) return n;
  if (memo.containsKey(n)) return memo[n]!;
  return memo[n] = fib(n - 1) + fib(n - 2);
}
