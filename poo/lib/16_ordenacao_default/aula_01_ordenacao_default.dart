import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Leonardo', telefone: 'telefone');
  var c2 = Cliente(nome: 'Livia', telefone: 'telefone');
  var c3 = Cliente(nome: 'Cleitin', telefone: 'telefone');
  var c4 = Cliente(nome: 'Xanduca', telefone: 'telefone');

  var lista = [c1, c2, c3, c4];
  print(lista);

  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  lista.sort(); // Chamando a ordenação default de dentro da classe

  print(lista);
}
