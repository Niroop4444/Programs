class Stack<T> {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return _items.removeLast();
  }

  T peek() {
    if (_items.isEmpty) {
      throw StateError('Cannot peek from an empty stack');
    }
    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;

  int get size => _items.length;

  @override
  String toString() => _items.toString();
}

void main() {
  final stack = Stack<int>();

  stack.push(1);
  stack.push(2);
  print("The items added to stack is $stack");

  print("Top element in stack is ${stack.peek()}");

  print("Popped element from stack is ${stack.pop()}, After Pop $stack");

  print('Is empty? ${stack.isEmpty}');
  print('Size: ${stack.size}');
}
