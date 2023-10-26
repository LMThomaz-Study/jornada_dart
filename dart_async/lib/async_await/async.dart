void main() {
  final nome = metodoAssincronoSemAsync();
  nome.then(print).catchError(print);

  final nomeAsync = metodoAssincrono();
  nomeAsync.then(print).catchError(print);
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value('Leonardo Thomaz');
}

// Implementando a palavra reservado `async`,
//  o próprio dart irá "invelopar" a função como uma Future

// Por boas práticas, devemos SEMPRE especificar o tipo de retorno da função
//  mesmo que utilize o async
Future<String> metodoAssincrono() async {
  return 'Leonardo Thomaz';
}
