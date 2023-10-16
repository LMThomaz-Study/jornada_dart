// Podemos dar um apelido para as importações (alias), assim podemos ter os mesmos nomes de funções pelos arquivos importados, sendop o nome pelo formato snack_case
import 'somas/soma.dart' as soma; // importação por caminnho relativo
import 'somas_nova/soma.dart' as nova_soma;
// import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart' as soma ;

void main() {
  var totalDoubles = nova_soma.somaDoubles(10.3, 1.7);
  var totalInt = soma.somaInteiros(10, 1);

  print('Total de doubles: $totalDoubles');
  print('Total de int: $totalInt');
}
