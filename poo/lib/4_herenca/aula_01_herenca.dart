import 'package:dart_poo/4_herenca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 7);
  cachorro.tamanho = 'pequeno';
  print(
      'Idade do cachorro em idade humana -> ${cachorro.calcularIdadeHumana()}');
  print('Idade do cachorro -> ${cachorro.recuperarIdade()}');

  print('''
  Cachorro:
    Tamanho: ${cachorro.tamanho}
    Idade: ${cachorro.idade}
    Idade humana: ${cachorro.calcularIdadeHumana()}
  ''');
}
