void main() {
  final diaDaSemana = 11;
  var diaDaSemanaStr = '';

  // if (diaDaSemana == 0) {
  //   diaDaSemanaStr = 'Segunda-feira';
  // } else if (diaDaSemana == 1) {
  //   diaDaSemanaStr = 'Terça-feira';
  // } else {
  //   diaDaSemanaStr = 'Não identificado';
  // }

  // o switch sempre compara a variável com valor de igualdade
  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'domingo';
      break;
    case 1:
      diaDaSemanaStr = 'segunda-feira';
      break;
    case 2:
      diaDaSemanaStr = 'terça-feira';
      break;
    case 3:
      diaDaSemanaStr = 'quarta-feira';
      break;
    case 4:
      diaDaSemanaStr = 'quinta-feira';
      break;
    case 5:
      diaDaSemanaStr = 'sexta-feira';
      break;
    case 6:
      diaDaSemanaStr = 'sabádo';
      break;
    default:
      diaDaSemanaStr = 'não identificado';
      break;
  }

  print(diaDaSemanaStr);

  final idade = 20;

  if (idade == 18) {
    print('maior de idade');
  } else if (idade == 19) {
    print('maior de idade');
  } else {
    print('menor de idade');
  }

  switch (idade) {
    case 18:
    case 19:
      print('maior de idade');
      break;
    default:
      print('menor de idade');
      break;
  }
}
