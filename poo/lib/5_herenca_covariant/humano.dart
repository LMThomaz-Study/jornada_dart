import 'package:dart_poo/5_herenca_covariant/fruta.dart';
import 'package:dart_poo/5_herenca_covariant/mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}
