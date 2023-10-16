// ignore_for_file: unused_local_variable

import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  // var pessoa = Pessoa('Leonardo', 24,'Masculino');

  // var pessoa = Pessoa(
  //   idadeConstruct: 24,
  //   nomeConstruct: 'Leonardo',
  //   sexoConstruct: 'Masculino',
  // );

  var pessoa = Pessoa(
    idade: 24,
    nome: 'Leonardo',
    sexo: 'Masculino',
  );

  var pessoaSemNome = Pessoa.semNome(
    idade: 24,
    sexo: 'Masculino',
  );

  var pessoaVazia = Pessoa.vazia();

  var pessoaFabrica = Pessoa.fabrica('Leonardo');
}
