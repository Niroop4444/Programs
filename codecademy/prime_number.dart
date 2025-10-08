void main() {
  int number = 30;
  print("Generating prime numbers up to $number : ${generatePrimes(number)}");
  print("Is $number a Prime NUmber : ${isPrime(number)}");
  printPrimeNumbersInString("I have numbers 2, 3, 4, 5, 10, 13 and 17");
}

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

List<int> generatePrimes(int limit) {
  List<int> primes = [];
  for (int n = 2; n <= limit; n++) {
    bool isPrime = true;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      primes.add(n);
    }
  }
  return primes;
}

void printPrimeNumbersInString(String text) {
  final regex = RegExp(r'\d+');
  final matches = regex.allMatches(text);

  final numbers = matches.map((e) => int.parse(e.group(0)!)).toList();

  final allPrimeNumbers = numbers.where(isPrime);

  if (allPrimeNumbers.isEmpty)
    return print("No Prime Numbers Found");
  else
    return print(
      "The prime numbers found in $text are : ${allPrimeNumbers.join(", ")}",
    );
}
