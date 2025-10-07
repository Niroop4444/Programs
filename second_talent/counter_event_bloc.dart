import 'dart:async';

// Events
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

// BLoC
class CounterBloc {
  int _counter = 0;

  // Output stream (State)
  final _counterStateController = StreamController<int>();
  Stream get counter => _counterStateController.stream;

  // Input stream (Event)
  final _counterEventController = StreamController<CounterEvent>();
  Sink get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent) {
      _counter++;
    } else if (event is DecrementEvent) {
      _counter--;
    }
    _counterStateController.add(_counter);
  }

  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
