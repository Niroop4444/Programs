void main() {
  int number = 5;
  print("Numbers till $number is ${loop(number)}");
}

List<int> loop(int number) {
  return List.generate(number, (i) => i + 1);
}
