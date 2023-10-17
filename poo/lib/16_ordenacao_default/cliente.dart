class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;

  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente: $nome';

  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome);
  }
}
