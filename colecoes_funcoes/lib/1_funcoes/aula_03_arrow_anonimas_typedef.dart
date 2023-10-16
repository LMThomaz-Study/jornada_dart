// ignore_for_file: prefer_function_declarations_over_variables, unused_local_variable

void main() {
  // Funções arrow
  print(somaInteiros(10, 10));

  // Funções anonimas
  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('Chamou a função da variavel');
    return 2000;
  };

  // () {
  //   print('Função anonima');
  // }();

  // print(nome.runtimeType);
  // print(idade.runtimeType);
  // print(funcaoQualquer.runtimeType);

  // print(funcaoQualquer);
  print(funcaoQualquer());

  // Não incova a função
  somaInteiros;

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');
}

int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteiroVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Leonardo';
  print('finalizando a função chamarUmaFuncaoDeUmParametro');

  print('invocamento a função funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);

void chamarUmaFuncaoDeUmParametroComTypedef(
  FuncaoQueRecebeNome funcaoQueRecebeONome,
) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Leonardo';
  print('finalizando a função chamarUmaFuncaoDeUmParametro');

  print('invocamento a função funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome, {
  required String? z,
  required String? zz,
  required int? i,
});

void funcComplex(
    String Function(
      String nome, {
      required String? z,
      required String? zz,
      required int? i,
    }) nome) {}

void funcComplex2(FuncaoQueRecebeNomeComplexo params) {}
