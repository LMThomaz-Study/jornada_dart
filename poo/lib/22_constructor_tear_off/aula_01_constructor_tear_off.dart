void main() {
  final nomes = ['Leonardo', 'Thomaz', 'Cleitin', 'Rosa'];
  final pessoasAntigo = nomes.map((nome) => Pessoa.nome(nome)).toList();

  for (var pessoa in pessoasAntigo) {
    print('Olá ${pessoa.nome}');
  }

  // Apartir das versões
  //  -> dart 2.8.0
  //  -> flutter 2.15.0

  // Podemos enviar construtores default e nomeados
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList(); // construtor default
  // final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList(); // construtor nomeado
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList(); // construtor nomeado
  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa(nome);
  }
}

// tipos de retornos que aceitam um construtor como parâmetro
//  -> void
//  -> dynamic (default, caso não tenha especificado)
//  -> object
//  -> a própria classe (no exemplo do código é o Pessoa)
void funcaoQualquer(void Function(String) funcao) {
  funcao('Leonardo');
}
