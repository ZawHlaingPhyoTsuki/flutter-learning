// void main() {
//   List<String> fruits = ["Apple", "Banana", "Orange"];

//   print(fruits);
//   print(fruits[0]);
//   print(fruits[2]);
//   print(fruits.length);

//   // Lists maintain ORDER
//   print(fruits.first);
//   print(fruits.last);

//   // Lists allow duplicates
//   fruits.add("Apple");
//   print(fruits);

//   fruits.remove('Apple');
//   print(fruits);

//   fruits.insert(2, "Grape");
//   print(fruits);

//   fruits.clear();
//   print(fruits);

//   var featuredProducts = ['Product A', 'Product B'];
//   var regularProducts = ['Product C', 'Product D', 'Product E'];

//   List<String>? vipProducts;

//   var catelog = [
//     'New Arrivals Header',
//     ...featuredProducts,
//     'Regular Product Header',
//     ...regularProducts,
//     ...?vipProducts,
//     'Footer',
//   ];

//   print(catelog);
// }

// void main() {
//   bool isAdmin = true;
//   bool isPremium = false;

//   // List<String> menu = [];

//   // menu.add("Home");
//   // menu.add("Profile");

//   // if (isAdmin) {
//   //   menu.add("Admin Panel");
//   // }

//   // if (isPremium) {
//   //   menu.add("Premium Features");
//   // }

//   // menu.add("Settings");

//   // print(menu);

//   var menu = [
//     'Home',
//     "Profile",
//     if (isAdmin) "Admin Panel",
//     if (isPremium) "Premium Features",
//     "Settings",
//   ];

//   print(menu);
// }
