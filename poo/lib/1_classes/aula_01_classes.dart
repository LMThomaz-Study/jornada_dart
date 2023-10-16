import 'package:dart_poo/1_classes/camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.marca = 'Nike';
  camisetaNike.cor = 'Preta';
  print('''
  Camiseta:
    Tamanho ${camisetaNike.tamanho}
    Cor: ${camisetaNike.cor}
    Marca: ${camisetaNike.marca}
    Tipo de Lavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'GG';
  camisetaAdidas.marca = 'Adidas';
  camisetaAdidas.cor = 'Vinho';
  print('''
  Camiseta:
    Tamanho ${camisetaAdidas.tamanho}
    Cor: ${camisetaAdidas.cor}
    Marca: ${camisetaAdidas.marca}
    Tipo de Lavagem: ${camisetaAdidas.tipoDeLavagem()}
  ''');
}
