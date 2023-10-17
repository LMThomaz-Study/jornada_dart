void main() {
  Pessoa()
    ..nome = 'Leonardo'
    ..email = 'leo@hotmail.com'
    ..site = 'www.example.com'
    ..printPessoa();
  // pessoa.nome = 'Leonardo';
  // pessoa.email = 'leo@hotmail.com';
  // pessoa.site = 'www.example.com';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Leonardo')
    ..putIfAbsent('email', () => 'email@hotmail.com')
    ..putIfAbsent('site', () => 'www.example.com');

  print(mapa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
    Pessoa:
      nome: $nome
      e-mail: $email
      site: $site
  ''');
  }
}
