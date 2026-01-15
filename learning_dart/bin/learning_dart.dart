// void main() {
//   String userName = "Aung Aung";
//   int age = 20;
//   double height = 5.5;
//   bool single = false;
//   List<String> hobbies = ["coding", "reading"];

//   print(userName);
//   print(
//     "$userName is $age years old, $height inches tall, and ${single ? "single" : "married"}",
//   );
//   print("He has ${hobbies.join(', ')} hobbies.");
// }

// enum TravelStatus { planning, traveling, completed }

// void main() {
//   TravelStatus status1 = TravelStatus.planning;
//   Duration duration1 = Duration(days: 5);

//   TravelStatus status2 = .planning;
//   Duration duration2 = .new(days: 5);
// }

// void main() {
//   // greet();
//   int result = add(1, 2);
//   print(result);
// }

// // void greet() {
// //   print("Hello");
// // }

// // int add(int num1, int num2) {
// //   return num1 + num2;
// // }

// int add(int num1, int num2) => num1 + num2;

void main() {
  profile("Aung Aung", lastName: "Aung", age: 20, height: 5);
}

void profile(
  String firstName, {
  String? lastName,
  required int age,
  required int height,
}) {
  print("Name: $firstName ${lastName ?? ""}");
  print("Age: $age");
  print("Height: $height");
}
