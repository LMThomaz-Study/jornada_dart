class Curso {
  String nome;
  String descricao;

  Curso({
    required this.nome,
    required this.descricao,
  });

  @override
  String toString() => 'Curso(nome: $nome, descricao: $descricao)';
}
