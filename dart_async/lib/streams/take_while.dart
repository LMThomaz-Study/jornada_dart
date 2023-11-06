Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // Pare a execução do stream quando o número for igual a zero,
  //  ou seja, enquanto a condição for false, o stream irá ficar fazendo as requisições
  // Obs: O valor recebido no .takeWhile() é o valor de retorno do nosso callback
  stream = stream.takeWhile((int numero) => numero < 10);

  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
