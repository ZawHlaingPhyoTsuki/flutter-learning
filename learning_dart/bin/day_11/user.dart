class User {
  final String firstName;
  final String lastName;
  final DateTime dob;

  User(this.firstName, this.lastName, this.dob);
}

extension UserExtension on User {
  String get initials => '$firstName[0]$lastName[0]'.toUpperCase();
}
