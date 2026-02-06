class User {
  User({required this.name, required this.email});

  final String name;
  final String email;

  int _saving = 100;
  int get saving => _saving;

  int? _age;
  int get age => _age ?? 0;
  set age(int newValue) {
    if (newValue < 0) {
      throw ArgumentError("Age cannot be negative");
    }
    _age = newValue;
  }

  void addSaving(int amount) {
    if (amount > 0) {
      _saving += amount;
    }
  }

  @override
  String toString() {
    return 'User(name: $name, email: $email, saving: $_saving, age: $_age)';
  }
}
