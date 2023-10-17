import 'package:dart_poo/15_equal_hashcode/pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Leonardo', email: 'email', telefone: '');
  var p2 = Pessoa(nome: 'Leonardo', email: 'email', telefone: '');

  print(p1.hashCode);
  print(p2.hashCode);

  /* 
    1 - p1 = Pessoa()
    2 - p2 = Pessoa()

    == (comparação de referência de memória): não são iguais
  */

  /* 
    // p2 = p1;
    1 - p1 = Pessoa()
    1 - p2 = Pessoa(), a instância de memória do p2, está igual ao p1

    == (comparação de referência de memória): são iguais
  */

  if (p1.nome == p2.nome) {
    print('é igual');
  } else {
    print('não é igual');
  }

  print(p1.toString());
}
