class Singleton {
  Singleton._internal();

  static final Singleton _instance = Singleton._internal();

  factory Singleton() {
    return _instance;
  }

  void showMessage() => print("Singleton instance accessed");
}

void main() {
  final s1 = Singleton();

  s1.showMessage();
}
