import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  //
  // Serialização
  //

  // método que pega nosso objeto Telefone e tranforma
  //  em um objecto Map<String, dynamic>
  // toMap() -> Passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  // método que pega um Map<String, dynamic> e transforma
  //  em um json pelo pacote dart:convert (jsonEncode)
  // toJson() -> Passo 2
  String toJson() => jsonEncode(toMap());

  //
  // Desserialização
  //

  // Passo 2
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  // Passo 1
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
