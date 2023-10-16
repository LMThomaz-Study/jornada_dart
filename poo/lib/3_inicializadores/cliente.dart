// ignore_for_file: prefer_initializing_formals

class Cliente {
  late String nome; // Será um atributo inicializado após a instância

  Cliente({required String nome}) {
    nome = nome;
  }
}
