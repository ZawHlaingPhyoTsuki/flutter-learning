sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T data;

  Success(this.data);
}

class Failure<T> extends Result<T> {
  final String error;

  Failure(this.error);
}

Result<int> divide(int a, int b) {
  if (b == 0) {
    return Failure("Cannot divide by zero");
  }

  return Success(a ~/ b);
}

Result<int> parseNumber(String text) {
  try {
    final number = int.parse(text);
    return Success(number);
  } catch (e) {
    return Failure("Invalid number: $text");
  }
}

void main() {
  final result1 = divide(10, 2);
  final message1 = switch (result1) {
    Success(data: var value) => "Result1: $value",
    Failure(error: var msg) => "Error1: $msg",
  };
  print(message1);

  final result2 = divide(10, 0);
  final message2 = switch (result2) {
    Success(:var data) => "Result2: $data",
    // Failure(error: var msg) => "Error: $msg"
    Failure(:var error) => "Error2: $error",
  };
  print(message2);

  final result3 = parseNumber('42');
  final message3 = switch (result3) {
    Success(:var data) => "Result3: $data",
    Failure(:var error) => "Error3: $error",
  };
  print(message3);

  final result4 = parseNumber('abc');
  final message4 = switch (result4) {
    Success(:var data) => "Result4: $data",
    Failure(:var error) => "Error4: $error",
  };
  print(message4);
}
