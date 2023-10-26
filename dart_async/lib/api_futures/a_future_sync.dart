void main() {
  print('Init Main');

  // Ele irá executar a função sincronicamente (na mesma linha do tempo do escopo), porém a resposta
  // no .then() ou .catchError() será enviado para o event_loop executar na próxima interação
  Future<String>.sync(
    () {
      print('Função Future executada');
      return 'Resultado Future';
    },
  ).then(print);

  print('End Main');
}
