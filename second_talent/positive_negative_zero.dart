void main() {
  int nunber = 0;
  print("The number $nunber is : ${checkPositiveNegativeZero(nunber)}");
}

String checkPositiveNegativeZero(int number) {
  return number > 0
      ? "Positive"
      : number < 0
      ? "Negative"
      : "Zero";
}
