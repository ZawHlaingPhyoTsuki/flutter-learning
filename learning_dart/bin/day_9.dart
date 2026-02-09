sealed class AuthState {}

class Initial extends AuthState {}

class Loading extends AuthState {}

class Failure extends AuthState {}

class Success extends AuthState {
  final String userName;

  Success({required this.userName});
}

String getMessage(AuthState state) {
  return switch (state) {
    Initial() => "Welcome to our app!",
    Loading() => "Loading...",
    Failure() => "Something went wrong!",
    Success(userName: final name) => "Welcome, $name!",
  };
}

void main() {
  AuthState state = Initial();
  print(getMessage(state));

  state = Loading();
  print(getMessage(state));

  state = Failure();
  print(getMessage(state));

  state = Success(userName: "Tsukuyomi");
  print(getMessage(state));
}

