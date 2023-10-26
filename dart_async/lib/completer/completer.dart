import 'dart:async';

Future<void> main() async {
  // buscarAlgo(2)
  //     .then(
  //       (value) => print('Mensagem: $value'),
  //     )
  //     .catchError((err) => print('Erro: $err'));

  try {
    final mensagem = await buscarAlgo(0);
    print('Mensagem: $mensagem');
  } catch (e, s) {
    print(e);
    print(s);
  }
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Numero enviado com sucesso');
    } else {
      completer.completeError('Número enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}
