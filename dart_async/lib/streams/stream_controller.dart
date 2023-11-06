import 'dart:async';

Future<void> main() async {
  print('Inicio Stream Controller');
  final streamController = StreamController<int>.broadcast();

  // Sempre que quissermos enviar algum dado para nossa stream, iremos trabalhar com o inStream
  final inStream = streamController.sink;

  // Sempre que quissermos captura algum dado da nossa stream, iremos trabalhar com o outStream
  final outStream = streamController.stream;

  outStream
      .skip(1) // pule a primeira execução
      .where((numero) => numero % 2 == 0) // filtre apenas o números par
      .map((numero) =>
          'O valor par enviado é $numero') // modifique os número para o texto
      .listen((strConvertido) {
    print('String recebida:');
    print(strConvertido);
  }); // Execute o print

  var numeros =
      List.generate(20, (index) => index); // Gerando uma lista de 20 números

  for (var numero in numeros) {
    print('Enviando número $numero');
    inStream.add(numero); // Adicionando na porta de entrada da stream o número
    // await Future.delayed(Duration(
    //   // Apenas para não jogar no terminal de uma vez
    //   microseconds: 500,
    // ));
  }

  print('Fim Stream Controller');

  await streamController.close(); // fechando nossa stream
}
