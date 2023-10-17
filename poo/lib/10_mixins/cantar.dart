import 'package:dart_poo/10_mixins/artista.dart';

mixin Cantar on Artista {
  String cantar() {
    return 'Canta sertanejo';
  }

  @override
  String habilidade() {
    return 'Cantar';
  }
}
