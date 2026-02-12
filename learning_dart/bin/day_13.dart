import 'dart:async';

Stream<int> stream1 = Stream.value(42);

Stream<String> stream2 = Stream.empty();

Stream<int> stream3 = Stream.fromIterable([1, 2, 3, 4, 5]);

Stream<int> stream4 = Stream.periodic(Duration(seconds: 1), (count) => count);

void main() {
  // final controller = StreamController<String>();

  // StreamSubscription<String> subscription = controller.stream.listen(
  //   (data) => print(data),
  // );

  // controller.sink.add("Hello");
  // controller.sink.add("Worrrld");

  // subscription.cancel();
  // controller.close();

  final subscription = stream4
      .map((value) => value * 2)
      .where((value) => value > 10)
      .take(10)
      .listen((data) => print(data));

  Future.delayed(Duration(seconds: 20), () {
    subscription.cancel();
  });
}
