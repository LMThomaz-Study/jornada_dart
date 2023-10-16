void main() {
  // Operadores lógicos
  // && (e)
  // || (ou)
  // ! (não)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M') {
    if (idade >= 18) {
      print('Pode entrar');
    } else {
      print('Não pode entrar');
    }
  } else {
    print('Não pode entrar');
  }

  // Todas as condições devem ser verdadeiras para retornar verdadeiro
  if (sexo == 'M' && idade >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // Uma das condições precisam ser verdadeira
  if (sexo == 'M' || idade >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // O operador `not` inverte o valor de condicional
  if (!(sexo == 'M' && idade >= 18)) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }
}
