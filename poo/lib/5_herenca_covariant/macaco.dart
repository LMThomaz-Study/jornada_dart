import 'package:dart_poo/5_herenca_covariant/Banana.dart';
import 'package:dart_poo/5_herenca_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
