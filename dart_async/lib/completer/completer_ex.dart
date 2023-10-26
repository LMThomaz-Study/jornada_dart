import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  // Utilizando callbacks
  usuario.salvarComum((sucess) {
    print('Sucesso: $sucess');
  }, (error) {
    print('Error: $error');
  });

  // Utilizando Completer
  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso: $sucesso');
  } catch (e) {
    print('Erro: $e');
  }
}

class UsuarioRepository {
  void salvarComum(
    void Function(String) callbackSucess,
    void Function(String) callError,
  ) {
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        callbackSucess('Usuário salvo com sucesso');
      } catch (e) {
        callError('Error');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();

    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        completer.complete('Usuário salvo com sucesso');
      } catch (e) {
        completer.completeError('Error');
      }
    });

    return completer.future;
  }
}
