void main() {
  final idade = 23;
  print('Sua idade é $idade');

  final valor = -20;

  if (valor.isNegative) {
    print('Valor negativo de $valor');
  }

  final valorDouble = 10.65;

  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30';
  final valorStringErro = '30L';

  final valorInt = int.parse(valorString);
  final valorInt2 = int.tryParse(valorStringErro);
  print(valorInt);
  if (valorInt2 != null) {
    print('O valor é ${valorInt2 + 2}');
  }

  final precoCamiseta = 30.275;
  print(precoCamiseta.toStringAsFixed(2));
}
