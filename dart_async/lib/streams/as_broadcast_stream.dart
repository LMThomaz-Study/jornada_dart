Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // Definindo que a stream é um broadcast, podemos definir vários listen para a stream
  //  por padrão, permite que apenas um evento de listen possa ser definido
  stream = stream.asBroadcastStream();

  stream = stream.take(10);

  stream.listen((numero) {
    print('Listen 1 value: $numero');
  });

  // por padrão da stream daria erro de execução
  stream.listen((numero) {
    print('Listen 2 value: $numero');
  });

  print('Fim');
}

int callback(int value) {
  print('Callback valor que chegou: $value');
  return (value + 1) * 2;
}
