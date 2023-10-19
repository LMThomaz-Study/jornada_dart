import 'package:dart_poo/24_part_of/telefone.dart';

part 'endereco.dart';
part 'cpf.dart';

class Pessoa {
  String? nome;

  _Endereco endereco = _Endereco();
  CPF cpf = CPF(); // atributo Telefone dentro de CPF (apenas para demonstração)
}
