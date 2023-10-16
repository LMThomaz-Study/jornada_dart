class Produto {
  final int? _id;
  final String? nome;
  final double? _preco;

  // Produto(this.id, this.nome, this.preco);

  // Quando queremos definir valores para um atributo final,
  // devemos definir antes do corpo do construtur,
  // pois no corpo a classe já foi criado, asism não podemos mudar os valores
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco {
    print(_id);
    print(_preco);
  }

  // Utilizando do factory, podemos fazer a lógica e após isso chamar a instância
  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
