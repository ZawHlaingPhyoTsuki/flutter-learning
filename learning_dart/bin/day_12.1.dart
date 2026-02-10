class Cache {
  final Map<String, dynamic> _data = {"user": "Alice"};

  Future<String> getUser() async {
    if (_data.containsKey('user')) {
      return Future.value(_data['user']);
    }

    return _fetchFromNetwork();
  }

  Future<String> _fetchFromNetwork() async {
    await Future.delayed(Duration(seconds: 2));
    // return 'Bob';
    return Future.value('Bob');
  }
}

void main() async {
  final cache = Cache();

  print('Loading...');
  final user = await cache.getUser();
  print('User: $user');
}
