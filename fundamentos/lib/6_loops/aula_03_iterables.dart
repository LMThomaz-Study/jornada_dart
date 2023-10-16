void main() {
  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte6 = numeros.takeWhile((numero) => numero < 7).toList();
  print(numeros);
  print(numerosAte6);

  final removerNumerosAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(removerNumerosAte5);

  // o skipWhile irá remover até encontrar a condição verdadeira
  var nomes = ['Leonardo', 'Thomaz', 'Livia', 'Eduardo', 'Roberto'];
  var nomesSkip = nomes.skipWhile((nome) => nome != 'Eduardo').toList();
  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'numero é $numero';
  }).toList();
  print(numeroStrList);

  final numerosRevertidos = numeros.reversed.toList();
  print(numerosRevertidos);
}
