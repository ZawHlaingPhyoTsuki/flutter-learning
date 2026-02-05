void main() {
  List<String?>? names = ["Aung Aung", null, "Su Su", null];
  print(names);

  Map<String, dynamic> json = {
    'name': "Aung Aung",
    "age": null,
    "email": "aung@gmail.com",
  };

  print(checkEmail(json["email"]));
}

bool checkEmail(String? email) {
  // return email != null && email.isNotEmpty;
  return email?.isNotEmpty ?? false;
}
