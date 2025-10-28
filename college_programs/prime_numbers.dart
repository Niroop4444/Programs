// Program to find the Prime numbers up to a predefined limit.

void main() {
  List<int> numbers = [1, 2, 3, 4, 7, 10, 13, 15, 17, 19, 20, 23, 25];

  List<int> primeNumbers = findPrimeNumbers(numbers);

  print('Prime numbers in the array [$numbers]: $primeNumbers');
}

List<int> findPrimeNumbers(List<int> numbers) {
  List<int> primes = [];

  for (int number in numbers) {
    if (number > 1) {
      bool isPrime = true;
      for (int i = 2; i <= number ~/ 2; i++) {
        if (number % i == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        primes.add(number);
      }
    }
  }

  return primes;
}
