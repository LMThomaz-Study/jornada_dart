String? nome;

void main() {
  var sobrenome = ' Thomaz';

  // var nomeCompleto = (nome != null) ? nome! + ' Thomaz' : 'Leonardo Thomaz';
  var nomeCompleto = (nome ?? 'Leonardo') + sobrenome;
  print(nomeCompleto);

  String? nomeCompleto2;
  print(nomeCompleto2 ?? 'Leonardo Thomaz');
}
