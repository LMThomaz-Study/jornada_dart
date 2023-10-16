String? nome;

void main() {
  var nomeCompleto = (nome != null) ? nome! + ' Thomaz' : 'Leonardo Thomaz';
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + ' Thomaz';
  } else {
    nomeCompleto2 = 'Leonardo Thomaz';
  }
  print(nomeCompleto2);

  var nomeLocal = nome;
  if (nomeLocal == null) {
    nomeLocal = 'Leonardo';
  }
  var nomeCompleto3 = nomeLocal + ' Thomaz';

  print(nomeCompleto3);
}
