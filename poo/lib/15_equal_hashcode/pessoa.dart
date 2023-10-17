class Pessoa {
  String nome;
  String email;
  String telefone;

  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });

  // Sempre que implementarmos o equals (==), devemos implementar o hashCode também,
  // somando os bits dos atributos a serem comparados

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) {
  //     return true; // Verificando a referência de memória
  //   }

  //   bool isEquals = false;

  //   // Verificando se other é uma instância de Pessoa
  //   if (other is Pessoa) {
  //     // Verificando se os atributos da classe são iguais
  //     if (other.nome == nome && other.email == email) {
  //       isEquals = true;
  //     }
  //   }

  //   return isEquals;
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) {
  //     return true;
  //   }

  //   return other is Pessoa && other.nome == nome && other.email == email;
  // }

  // @override
  // int get hashCode {
  //   // ^ (soma de bits)
  //   return nome.hashCode ^ email.hashCode;
  // }

  // !Gerado pela extensão
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  @override
  String toString() {
    return '''
----------------------
Pessoa:
  nome: $nome
  email: $email
  telefone: $telefone
----------------------
    ''';
  }
}
