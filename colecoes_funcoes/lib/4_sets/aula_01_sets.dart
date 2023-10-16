void main() {
  print('SETS');
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  // A grande diferença entre List e Set
  // o Set não aceita valores repetidos
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);
  print('-----------------');

  print('.toSet');
  // convertando uma List para um Set, assim descartando os valores repetidos
  print(numerosLista.toSet());
  print('-----------------');

  print('');
  print('METODOS MAIS UTILIZADOS');
  print('');

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('numeros1 » $numeros1');
  print('numeros2 » $numeros2');
  // Retorna o que há de diferente entre os sets
  // O que há de diferente na lista 1 dá lista 2 (será discardado os valores únicos da lista 2)
  print('.difference » ${numeros1.difference(numeros2)}');

  // Irá unir ambos sets, trazendo os valores de cada set respeitando que não deverá ter valores duplicados
  print('.union » ${numeros1.union(numeros2)}');

  // Irá trazer o que há de igual em ambos sets
  print('.intersection » ${numeros1.intersection(numeros2)}');

  // Irá retornar o valor igual dentro do Set, caso não houver irá retornar nullable
  print('.lookup » ${numeros1.lookup(2)}');

  // Para retornar um valor através do index, utilizamos o .elementAt
  print('.elementAt » ${numeros1.elementAt(2)}');
}
