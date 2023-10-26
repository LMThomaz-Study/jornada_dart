import 'dart:async';

Future<void> main() async {
  // final aguardando = inserindoAlgoBemLento();
  // print(DateTime.now().toIso8601String());
  // // mesmo que definimos um tempo limite e dê erro, o Future não será cancelado
  // //  com isto, podemos informar ao usuário que a requisição está demorando mais que o previsto
  // aguardando.timeout(Duration(seconds: 1), onTimeout: () {
  //   print('Terminou com Timeout');
  // }).then((value) {
  //   print('Terminou a execusão');
  // }).catchError((error) {
  //   print('Terminou com erro: $error');
  // });

  try {
    // Segue o mesmo principio de Timeout do utilizando o .then()
    await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
  } on TimeoutException catch (error) {
    print('Terminou com Timeout: $error');
  }
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
