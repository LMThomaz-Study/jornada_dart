void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 4), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 2), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 3), () => 'f4');
  var f5 = Future.delayed(
      Duration(seconds: 2), () => Future.error('Erro na execução'));

  print(DateTime.now().toIso8601String());
  // Caso algum dos Future dê erro, irá chamar o .catchError()
  //  apenas irá para o .then() se todos os Futures retornar sucesso
  Future.wait([f1, f2, f3, f4, f5]).then((arrayValues) {
    print(arrayValues);
    print(DateTime.now().toIso8601String());
  }).catchError((error) {
    print(error);
    print(DateTime.now().toIso8601String());
  });

  print('End Main');
}
