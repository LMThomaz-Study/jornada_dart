void main() {
  final totalAlunos = buscarTotalDeAlunos();
  totalAlunos.then((totalAlunosValue) {
    print('O total de alunos da ADF é $totalAlunosValue');
  });
  print('Respota: $totalAlunos');
}

Future<int> buscarTotalDeAlunos() async {
  print('Esse ponto da função é sincrono');
  final buscandoTotalDeAlunos = await Future.value(887);
  print('Esse ponto da função é após o await');
  return buscandoTotalDeAlunos;
}
