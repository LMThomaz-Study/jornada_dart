void main() {
  Future(() {}); // Estado de incompleto, ainda será executado

  Future.value(''); // Estado de Completo com sucesso
  Future.error(''); // Estado de Completo com erro
}

Future<String> funcAsync() async {
  return 'Qualquer valor de sucesso';
}

Future<String> func1() {
  return Future.value('Qualquer valor de sucesso');
}
