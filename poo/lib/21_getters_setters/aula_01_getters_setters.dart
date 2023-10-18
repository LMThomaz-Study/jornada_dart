void main() {
  var pessoa = Pessoa();
  pessoa.nome = 'Leonardo Thomaz';
  // pessoa.setNome('Leonardo Thomaz');
}

class Pessoa {
  String? _nome;

  // String? getNome() => _nome;

  String? get nome => _nome;

  // Utilizar os getters e setters apenas quando houver regra de negócio
  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }

  // void setNome(String? nome) => _nome = nome;
}
