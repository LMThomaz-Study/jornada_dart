void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(print);

  // expand
  print('EXPAND');
  // array bidimencional
  var lista = [
    [1, 2],
    [3, 4]
  ];

  // var listaNova = [...lista[0], ...lista[1]];
  var listaNova = lista.expand((numero) => numero).toList();
  print(listaNova);

  // any
  print('ANY');
  final listaBusca = ['Leonardo', 'Thomaz', 'Robesto', 'Livia'];
  if (listaBusca.any((nome) => nome == 'Thomaz')) {
    print('tem o Thomaz');
  } else {
    print('não tem o Thomaz');
  }

  // every
  print('EVERY');
  final listaBusca2 = ['Leonardo', 'Thomaz', 'Robasto', 'Livia'];
  if (listaBusca2.every((nome) => nome.contains('a'))) {
    print('todos os nomes tem a letra a');
  } else {
    print('nem todos os nomes tem a letra a');
  }

  // sort
  print('SORT');
  var listaParaOrdenacao = [99, 22, 10, 231, 2, 8, 21, 100, 83, 12];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = [
    'Leonardo',
    'Thomaz',
    'Robasto',
    'Arthur',
    'Livia',
  ];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  // Ordenando pela idade do paciente
  final listaPacientes = [
    'Leonardo Thomaz|23',
    'Alexandre Assis|21',
    'Livia Thomaz|21',
    'Laura Thomaz|20',
    'Rosemary Thomaz|53',
    'Joel Thomaz|61',
  ];
  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1; // Irá ficar pra cima na lista
    } else if (idadePaciente1 == idadePaciente2) {
      return 0; // Terá a mesma posição de ambos
    } else {
      return -1; // Irá ficar pra baixo na lista
    }
  });
  print(listaPacientes);

  // compareTo
  print('COMPARE TO');
  final listaPacientes2 = [
    'Leonardo Thomaz|23',
    'Alexandre Assis|21',
    'Livia Thomaz|21',
    'Laura Thomaz|20',
    'Rosemary Thomaz|53',
    'Joel Thomaz|61',
  ];
  final novaListaPaciente = [...listaPacientes2];
  novaListaPaciente.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    /// print(1.compareTo(2)); // => -1
    /// print(2.compareTo(1)); // => 1
    /// print(1.compareTo(1)); // => 0
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);
  print(novaListaPaciente);

  // pacientes por função
  final listaPacientes3 = [
    'Leonardo Thomaz|23',
    'Alexandre Assis|21',
    'Livia Thomaz|21',
    'Laura Thomaz|20',
    'Rosemary Thomaz|53',
    'Joel Thomaz|61',
  ];
  print('ANTES');
  print(listaPacientes3);

  // Ao mandar uma Lista como parâmetro, estou enviando o endereço de memória, assim irá mudar os dados dentro deste endereço
  // funcaoQualquer(listaPacientes3);
  funcaoQualquer([...listaPacientes3]);

  print('DEPOIS');
  print(listaPacientes3);
}

void funcaoQualquer(List<String> pacientes) {
  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    /// print(1.compareTo(2)); // => -1
    /// print(2.compareTo(1)); // => 1
    /// print(1.compareTo(1)); // => 0
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes);
}
