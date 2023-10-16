import 'package:dart_poo/5_herenca_covariant/fruta.dart';

abstract class Mamifero {
  // Utilizando o covariant, o Dart entende que poderá aceitar classes que herdem de Fruta
  void comer(covariant Fruta fruta);
}
