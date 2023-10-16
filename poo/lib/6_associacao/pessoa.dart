class Pessoa {
  String? nome;

  // Composição:
  // -> Quando um atributo de associação é obrigatório
  //    nós estamos falando de composição.
  Endereco endereco = Endereco();
  CPF cpf = CPF();

  // Agragação:
  // -> Quando um atributo de associação NÃO é obrigatório
  //    nós estamos falando de agragação.
  Telefone? telefone;
}

class Endereco {}

class CPF {}

class Telefone {}
