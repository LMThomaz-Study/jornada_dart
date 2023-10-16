void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('----------------');
  print('Pessoas na lista');
  print('----------------');
  final pessoasFiltradas = filtrarPessoasUnicas(pessoas);
  pessoasFiltradas.forEach(print);
  print('----------------');
  print('');

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  print('----------------');
  print('Pessoas do sexo Masculino');
  print('----------------');
  filtrarPessoasPorSexo(pessoasFiltradas, 'Masculino').forEach(print);
  print('----------------');
  print('');
  print('----------------');
  print('Pessoas do sexo Feminino');
  print('----------------');
  filtrarPessoasPorSexo(pessoasFiltradas, 'Feminino').forEach(print);
  print('----------------');
  print('');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('----------------');
  print('Pessoas maiores que 18 anos ordenados pela idade');
  print('----------------');
  final pessoasMaioresQue18Anos =
      filtrarPessoasPorIdadeMinima(pessoasFiltradas, 18);
  ordenarPessoasPorIdade(pessoasMaioresQue18Anos).forEach(print);
  print('----------------');
  print('');

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('----------------');
  print('Pessoa mais velha');
  print('----------------');
  final dadosPessoaMaisVelha = obterDadosPessoaMaisVelha(pessoasFiltradas);
  print(dadosPessoaMaisVelha[0]);
  print('----------------');
  print('');
}

List<String> filtrarPessoasUnicas(List<String> pessoas) {
  final pessoasFiltradas = <String>[];
  for (var pessoa in pessoas) {
    final existePessoaFiltrada =
        pessoasFiltradas.any((pessoaFiltrada) => pessoaFiltrada == pessoa);
    if (existePessoaFiltrada) continue;

    pessoasFiltradas.add(pessoa);
  }
  return pessoasFiltradas;
}

List<String> filtrarPessoasPorSexo(List<String> pessoas, String sexoPessoa) {
  final pessoasFiltradas = <String>[];
  for (var pessoa in pessoas) {
    final pessoaDados = pessoa.split('|');
    final sexoPessoaDado = pessoaDados[2];
    if (sexoPessoaDado.toLowerCase() == sexoPessoa.toLowerCase()) {
      pessoasFiltradas.add(pessoa);
    }
  }
  return pessoasFiltradas;
}

List<String> filtrarPessoasPorIdadeMinima(List<String> pessoas, int idade) {
  final pessoasFiltradas = <String>[];
  for (var pessoa in pessoas) {
    final pessoaDados = pessoa.split('|');
    final idadePessoa = int.parse(pessoaDados[1]);
    if (idadePessoa >= idade) {
      pessoasFiltradas.add(pessoa);
    }
  }
  return pessoasFiltradas;
}

List<String> ordenarPessoasPorIdade(List<String> pessoas) {
  pessoas.sort((pessoa1, pessoa2) {
    final pessoaDados1 = pessoa1.split('|');
    final pessoaDados2 = pessoa2.split('|');

    final idadePessoa1 = int.parse(pessoaDados1[1]);
    final idadePessoa2 = int.parse(pessoaDados2[1]);

    return idadePessoa2.compareTo(idadePessoa1);
  });
  return pessoas;
}

List<String> obterDadosPessoaMaisVelha(List<String> pessoas) {
  List<String> pessoaMaisVelhaDados = pessoas.first.split('|');

  for (var pessoa in pessoas) {
    final pessoaDados = pessoa.split('|');

    final idadePessoa = int.parse(pessoaDados[1]);
    final idadePessoaMaisVelha = int.parse(pessoaMaisVelhaDados[1]);

    if (idadePessoa > idadePessoaMaisVelha) {
      pessoaMaisVelhaDados = pessoaDados;
    }
  }

  return pessoaMaisVelhaDados;
}
