void main() {
  var lista = ['Leonardo'];
  print(lista.hashCode); // Identicação de memória
  print(lista);

  funcao(lista);
  print(lista);

  print('------------------------');

  String nome = 'Leonardo';
  print(nome.hashCode);
  print(nome);
  funcao2(nome);
  print(nome);

  print('------------------------');

  var list = ['Livia'];
  print(list);
  add(list);
  print(list);

  print('------------------------');

  var listaProdutos = ['prod'];
  print('antes de calcular o carrinho » $listaProdutos');

  print(
      'valor total de ${calculaCarrinho(listaProdutos)} nos itens $listaProdutos');
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

void funcao2(String nome) {
  nome += ' Teste';
  print(nome.hashCode);
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Leonardo Thomaz');
  print('add » $novoNomes');
  return novoNomes;
}

int calculaCarrinho(List<String> produtos) {
  produtos.clear();
  return 10;
}
