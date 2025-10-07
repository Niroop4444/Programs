import 'dart:async';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  void run(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

void main() {
  final debouncer = Debouncer(delay: Duration(seconds: 1));

  print("Typing simulation:");

  // Simulate a user typing quickly (like search input)
  for (int i = 0; i < 5; i++) {
    Future.delayed(Duration(milliseconds: i * 300), () {
      debouncer.run(() => print("User stopped typing → Performing search"));
    });
  }

  // Dispose after test
  Future.delayed(Duration(seconds: 3), debouncer.dispose);
}
