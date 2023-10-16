import 'package:dart_poo/8_interfaces/carro.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

// Variáveis de tipo superior e atributos de classe
//  não são auto promovidas para o tipo checado
Carro unoCarroSuperior = Uno();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro unoCarro = Uno();

  // var tipoDeRodas = (unoCarro as Uno).tipoDeRodas();
  // print('Tipo de Rodas $tipoDeRodas');
  if (unoCarro is Uno) {
    // Quando checamos se a variável é(is) de um tipo
    //  caso ela seja, o dart irá automaticamente converter
    //  essa instância para a classe do tipo.
    var tipoDeRodas = unoCarro.tipoDeRodas();
    print('Tipo de Rodas $tipoDeRodas');
  }

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Valocidade máxima: ${carro.velocidadeMaxima()}
      Tipo de Rodas: ${carro is Uno ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
