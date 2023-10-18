import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/fazer.dart';
import 'package:dart_poo/20_metadatas/pessoa.dart';

void main() {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  // Lendo a notação da classe Fazer na classe Pessoa
  for (var annotation in classMirror.metadata) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Classe');
      print('Quem: ${instanceAnnotation.quem}');
      print('O que: ${instanceAnnotation.oque}');
    }
  }

  // Lendo a notação classe Fazer na classe Pessoa nos atributos e métodos
  for (var declarationMirror in classMirror.declarations.values) {
    if (declarationMirror is VariableMirror) {
      for (var annotation in declarationMirror.metadata) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('Variáveis');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que: ${instanceAnnotation.oque}');
        }
      }
    } else if (declarationMirror is MethodMirror) {
      for (var annotation in declarationMirror.metadata) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('Métodos');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que: ${instanceAnnotation.oque}');
        }
      }
    }
  }
}
