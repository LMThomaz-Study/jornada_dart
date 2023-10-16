import 'package:dart_poo/5_herenca_covariant/Banana.dart';
import 'package:dart_poo/5_herenca_covariant/fruta.dart';
import 'package:dart_poo/5_herenca_covariant/humano.dart';
import 'package:dart_poo/5_herenca_covariant/macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanina'));
}
