import 'package:dart_poo/18_modificadores/pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'nome', idade: 32);
  var p2 = const Pessoa(nome: 'nome', idade: 32);
  var p3 = const Pessoa(nome: 'nome', idade: 32);

  print('p1 == p2: ${p1 == p2}');
  print('p1 == p3: ${p1 == p3}');
  print('p2 == p3: ${p2 == p3}');
}

/* 
1 - p1 -> Pessoa(...)
2 - p2 -> const Pessoa(...)
2 - p3 -> const Pessoa(...)

p1 == p2: false
p1 == p3: false
p2 == p3: true

? Caso os dados dos construtores forem iguais duma classe constante,
?   o dart irá referênciar a nova instância na referência de memória já existente
?   sendo que os atributos da classe deve ser final, assim sendo imutável

 */