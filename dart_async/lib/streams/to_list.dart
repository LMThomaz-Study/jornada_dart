Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  // Irá ficar aguardando até o final e receberá todos os dados de uma vez no formato de lista
  final data = await stream.toList();

  print(data);

  print('Fim');
}

int callback(int value) {
  return (value + 1) * 2;
}
