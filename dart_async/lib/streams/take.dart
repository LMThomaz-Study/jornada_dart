Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // Após 5 requisições o próprio Dart irá parar de executar
  stream = stream.take(5);

  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
