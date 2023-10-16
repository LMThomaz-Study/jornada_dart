// ignore_for_file: prefer_interpolation_to_compose_strings

class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // Construtor default
  //  -> todas as classes tem automaticamente
  // Pessoa();

  // Pessoa(
  //   String nomeConstruct,
  //   int idadeConstruct,
  //   String sexoConstruct,
  // ) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

  // Pessoa({
  //   required String nomeConstruct,
  //   required int idadeConstruct,
  //   required String sexoConstruct,
  // }) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  // Construtores nomeados
  // -> não podemos fazer sobrecarga nos construtores em Dart, por isso utilizamos do construtor noameado
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  // Construtor factory
  // utilizado para fazer alguma regra de negócio para instânciar a classe
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;

    return pessoa;
  }
}
