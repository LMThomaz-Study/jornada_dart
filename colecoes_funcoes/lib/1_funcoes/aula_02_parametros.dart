void main() {
  // Parametros obrigatórios por default
  print('A soma de 10 + 10 = ${somaInteiros(10, 10)}');

  // Parametros nomeados
  //   -> são nullables por default
  //   -> podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + null = ${somaDoubles(numero1: 10.2)}');
  print(
    'A soma de 10.2 + 10.2 = ${somaDoublesObrigatorios(numero1: 10.2, numero2: 10.2)}',
  );
  print(
    'A soma de 10.2 + null = ${somaDoublesObrigatorios2(numero1: 10.2, numero2: null)}',
  );
  print(
    'A soma de 10.2 + default (0) = ${somaDoublesObrigatoriosDefault(numero1: 10.2)}',
  );

  // Parametro opcional
  print('A soma de 10 + opcional (0) = ${somaIntOpcional(10)}');

  // Parametros opcionais e nomeados devem sempre ser os últimos
  //  -> os parâmetros não aceita opcionais com nomeados
  parametrosNormaisComNomeados(01, nome: 'Leonardo', idade: 23);
  // parametrosNormaisComOpcionais(01, 'Leonardo Thomaz', 23);
  parametrosNormaisComOpcionais(01, 'Leonardo Thomaz');
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({
  double? numero1,
  double? numero2,
}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0.0;
}

double somaDoublesObrigatorios({
  required double numero1,
  required double numero2,
}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2({
  required double numero1,
  required double? numero2,
}) {
  // Caso for nullable irá atribuir o valor 0
  numero2 ??= 0;

  return numero1 + numero2;
}

double somaDoublesObrigatoriosDefault({
  double numero1 = 0,
  double numero2 = 0,
}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(
  int numero, {
  required String nome,
  required int idade,
}) {}

void parametrosNormaisComOpcionais(int numero, [String? nome, int? idade]) {}

void parametrosNormaisComOpcionais2(int numero, int numero2,
    [String? nome, int? idade]) {}
