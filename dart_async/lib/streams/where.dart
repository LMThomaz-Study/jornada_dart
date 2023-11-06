Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // .where() irá filtrar os número que são diviseis por 6 e desta filtragem e irá executar apenas 3 chamadas filtradas
  // .where() vs .skipWhite(),
  //  -> .where(): tem o propósito FILTRAR os dados
  //  -> .skipWhile() tem o proposito de DESCARTAR os dados
  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
