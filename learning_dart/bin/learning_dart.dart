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

enum TravelStatus { planning, traveling, completed }

void main() {
  TravelStatus status1 = TravelStatus.planning;
  Duration duration1 = Duration(days: 5);

  TravelStatus status2 = .planning;
  
}
