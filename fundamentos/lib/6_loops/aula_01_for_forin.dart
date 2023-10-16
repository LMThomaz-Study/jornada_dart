void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Leonardo', 'Livia', 'Padoka', 'Goiabita'];

  print('imprimindo números com FOR convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('imprimindo nomes com FOR convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('imprimindo números com FORN-IN');
  for (var numero in numeros) {
    print(numero);
  }

  print('imprimindo nomes com FORN-IN');
  for (var nome in nomes) {
    print(nome);
  }

  print('imprimindo nomes com FOR convencional e BREAK');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (i == 2) {
      break;
    }
  }

  print('imprimindo nomes com FOR-IN e BREAK');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Livia') {
      break;
    }
  }

  print('imprimindo nomes com FOR convencional com CONTINUE');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }

  // collection FOR
  var listInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    '#01',
    for (var i in listInts) '#$i',
  ];
  print(listaStrings);
}
