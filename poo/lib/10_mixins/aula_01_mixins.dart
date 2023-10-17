import 'package:dart_poo/10_mixins/cleiton.dart';

void main() {
  // Cleiton é um Artista
  // Cleiton é um Cantar
  // Cleiton é um Dancar
  var cleiton = Cleiton();

  print('''
    Cleiton:
      habilidade: ${cleiton.habilidade()}
      cantar: ${cleiton.cantar()}
      dançar: ${cleiton.dancar()}
  ''');
}
