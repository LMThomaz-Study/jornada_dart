void main() {
  final idade = 12;

  if (idade >= 18) {
    print('maior de idade');
  } else {
    print('menor de idade');
  }

  // (condição) ? (verdadeiro) faça algo : (falso) faça outra coisa
  final eMaiorDeIdade = (idade >= 18) ? 'verdade' : 'falso';

  print('é maior de idade? $eMaiorDeIdade');

  print(
    (idade < 13)
        ? 'criança'
        : (idade > 12 && idade < 18)
            ? 'adolecente'
            : 'adulto',
  );

  final ano = 2024;

  print((ano % 4 == 0 || ano % 400 == 0 || ano % 100 != 0)
      ? 'o ano $ano é bisexto'
      : 'o ano $ano NÃO é bisexto');
}
