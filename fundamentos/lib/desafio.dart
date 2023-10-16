void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('========================================');
  print('    Pacientes com mais de 20 anos       ');
  print('----------------------------------------');
  pacientes.where((pacient) {
    final dataPacient = pacient.split('|');
    final idadePacient = int.tryParse(dataPacient[1]);

    return idadePacient != null && idadePacient > 20;
  }).forEach((pacient) {
    final dataPacient = pacient.split('|');
    final nomePacient = dataPacient[0];
    print('  $nomePacient');
  });
  print('========================================');
  print('');
  print('');

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print('========================================');
  print('       Dividido em cada profissão       ');
  print('----------------------------------------');
  final profissoes = <String>[];
  for (var pacient in pacientes) {
    final dadosPacient = pacient.split('|');
    final profissaoPacient = dadosPacient[2].toLowerCase();
    final essaProfissaoExiteNoList = profissoes.contains(profissaoPacient);

    if (essaProfissaoExiteNoList) {
      continue;
    }

    profissoes.add(profissaoPacient);
  }

  for (var proficao in profissoes) {
    final pacientesDaProfissao = pacientes.where((pacient) {
      final dadosPacient = pacient.split('|');
      final proficaoPacient = dadosPacient[2].toLowerCase();
      return proficaoPacient == proficao;
    }).toList();

    print(
        '   $proficao - ${pacientesDaProfissao.length} paciente${pacientesDaProfissao.length < 2 ? '' : 's'}');

    pacientesDaProfissao.forEach((pacient) {
      final dadosPacient = pacient.split('|');
      final nomePacient = dadosPacient[0];
      print('      $nomePacient');
    });
  }

  print('========================================');
  print('');
  print('');
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('========================================');
  print('      Pacientes que residem em SP       ');
  print('----------------------------------------');
  const filterUF = 'SP';

  pacientes.where((pacient) {
    final dadosPacient = pacient.split('|');
    final ufPacient = dadosPacient[3].toUpperCase();
    return ufPacient == filterUF.toUpperCase();
  }).forEach((pacient) {
    final dadosPacient = pacient.split('|');
    final nomePacient = dadosPacient[0];
    print('   $nomePacient');
  });

  print('========================================');
  print('');
  print('');
}
