import 'package:dart_poo/19_extensions/pessoa.dart';
import 'package:dart_poo/19_extensions/pessoa_saudacao_extension.dart';

import './saudacao_string_extension.dart';

void main() {
  var nome = 'Leonardo Thomaz';

  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Cleiton');

  print(p1.saudacao());
}
