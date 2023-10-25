void main() {
  print('Levando o carro para o mecânico');

  Future<int>(() {
    // função assincrona que vai fazer o orçamento da manutenção do nosso caro
    return 10 ~/ 2;
  }).then((valorOrcamento) {
    print('O orçamento para arrumar o carro é de $valorOrcamento');
  });

  print('Saindo da mecânica');

  print('Fui viajar');
  Future<String>(() {
    // Indo para USA
    // throw Exception('Avião Caiu');
    return 'Macbook comprado';
  }).then((valorOrcamento) {
    print('Comprei meu macbook');
  }).catchError((error) {
    print('Deu RUIM o avião CAIU');
  }).whenComplete(() => print('Finalizando'));

  print('');
  print('-------------');
  print('');

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) => print('Valor calculado é $value'));

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value'), onError: (error) {
    print('Ocorreu um erro > $error');
    throw Exception('outro erro');
  }).catchError((error) {
    print('Ocorreu um erro no CatchError > $error');
  });

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value')).catchError(
    (error) {
      print('Ocorreu um erro no CatchError $error');
    },
    test: (error) => error
        is UnsupportedError, // O test diz se o catchError é para resolver o erro ou não
  ).catchError(
    (error) {
      print('Ocorreu um erro no CatchError 2 $error');
    },
  );
}
