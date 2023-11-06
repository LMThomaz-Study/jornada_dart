Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  // Await for
  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
