// An event registration system takes input such as Participant Namea, Age,
// Event name from users to register for various events. Display the entered details

import 'dart:io';

void main() {
  List<String> events = [
    'Hackathon',
    'Tech Talk',
    'AI Workshop',
    'Flutter Bootcamp',
    'Startup Pitch',
  ];

  print('=== Event Registration System ===\n');

  stdout.writeln('Enter Participant Name:');
  String name = stdin.readLineSync()!;

  stdout.writeln('Enter Age:');
  int age = int.parse(stdin.readLineSync()!);

  print('\nAvailable Events:');
  for (int i = 0; i < events.length; i++) {
    print('${i + 1}. ${events[i]}');
  }

  stdout.write('\nSelect an event by index or name: ');
  String input = stdin.readLineSync()!;

  String selectedEvent;

  if (int.tryParse(input) != null) {
    int index = int.parse(input);
    if (index >= 1 && index < events.length) {
      selectedEvent = events[index - 1];
    } else {
      print('\n❌ Invalid index! Please restart and choose correctly.');
      return;
    }
  } else {
    selectedEvent = events.firstWhere(
      (event) => event.toLowerCase() == input.toLowerCase(),
      orElse: () => '',
    );

    if (selectedEvent.isEmpty) {
      print('\n❌ Event not found! Please restart and choose correctly.');
      return;
    }
  }

  print('\n✅ Registration Successful!');
  print('----------------------------');
  print('Name: $name');
  print('Age: $age');
  print('Event Registered: $selectedEvent');
  print('----------------------------');
}
