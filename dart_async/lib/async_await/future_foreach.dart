Future<void> main() async {
  print('Inicio');
  final nomes = ['Leonardo', 'Livia', 'Thomaz', 'Valentina', 'Cleiton'];

  // nomes.forEach(tratarSaudacao); // o .forEach() da lista não tem a caracterisca de um Future

  // for (var nome in nomes) {
  //   await tratarSaudacao(nome);
  // }

  // Nesta opção será processado item a item
  // await Future.forEach<String>(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  // Nesta opção será processado todos duma vez, assim que todos forem completados
  final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  final nomesProcessados = await Future.wait(nomesFuture);
  print(nomesProcessados);

  print('Fim');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio saudação $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudação: $nome');
    return 'Olá, $nome';
  });
}
