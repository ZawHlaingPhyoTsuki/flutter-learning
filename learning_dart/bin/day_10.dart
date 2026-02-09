void main() {
  final prices = [100, 200, 45, 300, 600];
  final affortable = prices.where((price) => price <= 200);
  print(affortable); // (100, 200, 45) -> type: Iterable<int>

  final affortableList = affortable.toList();
  print(affortableList); // [100, 200, 45] -> type: List<int>

  // Imperative
  final numbers = [1, 2, 3, 4, 5];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    // sum = sum + numbers[i];
    sum += numbers[i];
  }
  print("Sum: $sum");

  int product = 1;
  for (int i = 0; i < numbers.length; i++) {
    product *= numbers[i];
  }
  print("Product: $product");

  // Declarative
  final sum2 = numbers.reduce((a, b) => a + b);
  final product2 = numbers.reduce((a, b) => a * b);

  print("Sum2: $sum2");
  print("Product2: $product2");

  // Higer Order Function
  // final add = (int a, int b) => a + b;
  int add(int a, int b) => a + b;
  final sum3 = numbers.reduce(add);
  print("Sum3: $sum3");
}
