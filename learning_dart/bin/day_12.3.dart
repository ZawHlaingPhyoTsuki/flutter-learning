import 'dart:async';

class SmartConnection {
  final Completer<String> _completer = Completer();

  SmartConnection() {
    _attemptConnection();
  }

  Future<String> get connected => _completer.future;

  void _attemptConnection() {
    Future.delayed(Duration(seconds: 1), () {
      // Simulate random success/failure
      if (DateTime.now().second % 2 == 0) {
        _completer.complete("Success");
      } else {
        _completer.completeError('Connection failed');
      }
    });
  }
}

void main() async {
  try {
    var connection = SmartConnection();
    String result = await connection.connected;
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
