import 'dart:io';

import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(
  quem: 'Leonardo na classe',
  oque: 'Tentando ler a anotação da classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'Leonardo no atributo',
    oque: 'Tentando ler a anotação do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Leonardo no metodo',
    oque: 'Tentando ler a anotação do metodo',
  )
  void fazerAlgo() {}
}
