void main() {
  // const cor = 'vermelho';
  // if (cor == 'vermelho') {}

  var cor = Cores.vermelho;
  if (cor == Cores.vermelho) {}

  // Transformando a string azul em um enum Cores.azul
  // versão < 2.15
  var azul = 'azul';
  var corAzul =
      Cores.values.where((element) => element.toString() == 'Cores.$azul');
  print(corAzul);

  // versão >= 2.15
  print(Cores.azul.name);
  var corAzulNovo = Cores.values.byName(azul);
  print(corAzulNovo);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresMapName = Cores.values.asNameMap();
  print(coresMapName);

  // Pelo .byName, caso não tenha o valor, irá extourar um erro
  // Cores.values.byName('branco');
  var corBranco = coresMapName['branco'];
  print(corBranco);
}

enum Cores { azul, vermelho, laranja, verde, preto }
