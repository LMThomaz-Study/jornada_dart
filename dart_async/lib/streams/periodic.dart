Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  // Será acionado o callback pelo interval, utilizado quando queremos fazer alguma função de tempos em tempos
  final stream = Stream<int>.periodic(interval, callback);

  // Await for -> Será quase igual a um loop infinito, porém enquanto aguarda ele não consome memória
  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
