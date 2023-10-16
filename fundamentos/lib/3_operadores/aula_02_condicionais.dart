void main() {
  // Operadores relacionais
  // Existe 6 tipos
  // são eles: == (igualdade), != (diferente), > (maior que), < (menor que), >= (maior ou igual que) e <= (menor ou igual que)

  final idade = 18;
  final tipoPet = 'gato';

  // Regra de negocio para tirar habilitação
  if (idade == 18) {
    print('Pode tirar habilitação');
  }

  if (idade > 17) {
    print('Pode tirar habilitação');
  }

  if (idade >= 18) {
    print('Pode tirar habilitação');
  }

  if (tipoPet != 'cachorro') {
    print('Desculpe, mas não temos nada para seu pet');
  }
}
