Future<void> withdraw(double amount) async {
  if (amount <= 0) {
    return Future.error("Amount must be positive");
  }

  if (amount > 1000) {
    return Future.error("Amount must be less than 1000");
  }

  return _processWithdraw(amount);
}

Future<void> _processWithdraw(double amount) async {
  await Future.delayed(Duration(seconds: 2));
  print("Withdrawing \$$amount");
}

void main() async {
  try {
    // await withdraw(500);
    await withdraw(-50);
  } catch (e) {
    print("Error: $e");
  }
}
