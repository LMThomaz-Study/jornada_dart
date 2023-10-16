void main() {
  //      inciono; condição; incremento
  // for (var i = 0; i < 10; i++)
  var numero = 0;

  print('while convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }

  //doWhile
  print('do while');
  var indice = 0;

  print('while não irá executar');
  while (indice > 0) {
    print(indice);
    indice++;
  }

  do {
    print(indice);
    // indice++; // Isso irá quebrar o código dando loop infinito
  } while (indice > 0);
}
