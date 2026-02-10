// import 'dart:io';

Future<void> orderFood() async {
  print("Ordering food...");

  // sleep(Duration(seconds: 5));
  await Future.delayed(Duration(seconds: 5));

  print("Get burger");
}

// Regular function
String getName() {
  return 'Alice';
}

// Async function
Future<String> getNameAsync() async {
  return 'Alice';
}

void main() async {
  print('1. Go to restaurant');

  orderFood();

  print('2. Sit down, check phone');
  print('3. Reply to messages');
  print('4. Browse Instagram');

  ////////

  String name1 = getName(); // Immediate
  Future<String> name2 = getNameAsync(); // Returns Future
  String name3 = await getNameAsync(); // Wait for result

  print(name1); // Prints: Alice
  print(name2); // Prints: Instance of 'Future<String>'
  print(name3); // Prints: Alice
}
