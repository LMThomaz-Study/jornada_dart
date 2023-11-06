Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // Pule a execução do stream enquanto o número recebido seja menor que 5
  // Obs: O valor recebido no .skipWhile() é o valor de retorno do nosso callback
  stream = stream.take(5).skipWhile((numero) => numero < 5);

  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
