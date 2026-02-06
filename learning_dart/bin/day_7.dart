// class User {
//   User(this.name, this.email);

//   final String name;
//   final String email;
// }

// void main() {
//   final johnDoe = User("John Doe", "johndoe@gmail.com");
//   final janeDoe = User("Jane Doe", "janedoe@gmail.com");

//   print(johnDoe);
//   print(janeDoe);

//   print("${johnDoe.name} ${johnDoe.email}");
//   print("${janeDoe.name} ${janeDoe.email}");
// }

// class User {
//   User({required this.name, required this.email});

//   final String name;
//   final String email;

//   void display() => print('$name ($email)');
// }

// void main() {
//   final user1 = User(name: 'John Doe', email: 'johndoe@gmail.com');
//   final user2 = User(email: "janedoe@gmail.com", name: "Jane Doe");

//   user1.display();
//   user2.display();
// }

import 'user.dart';

void main() {
  final user = User(email: "[EMAIL_ADDRESS]", name: "John Doe");

  print(user.saving);
  user.addSaving(100);
  print(user.saving);

  print(user.age);
  user.age = 25;
  print(user.age);

  print(user.toString());
}
