// Classe abstratada, pois tem métodos implementados
abstract class CarroClasseAbstrada {
  void velocidadeMaxima() {}
}

// Interface, pois não tem nenhum método implemento
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
