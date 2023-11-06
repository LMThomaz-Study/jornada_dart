Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(10);

  // Diferetemento do .toList ou Await For o listen é um evento do qual será chamando quando houver uma resposta,
  //  ou seja, não irá parar e ficar aguardando as respostas da stream, o código irá executar normalmente
  //  e chama-rá o listen quando houver alguma resposta
  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
