void main() {
  print('Init main');

  print(temperaturaAtual());
  print(previsaoAmanha());

  print('End main');
}

String temperaturaAtual() {
  // sleep(const Duration(seconds: 3));
  return 'Está fazendo 30';
}

String previsaoAmanha() {
  // sleep(const Duration(seconds: 4));
  return 'Amanhã fará 34';
}
