import 'stub.dart' // O arquivo stub, são as referências das funções, ou seja, a interface ou contrato assim contendo apenas as assinaturas
    if (dart.library.io) 'mobile.dart'
    if (dart.library.html) 'web.dart';

// import 'web.dart' // Podemos também implementar uma importação padrão
//     if (dart.library.io) 'mobile.dart'; // na condição do verdadeira, será utilizado desta importação

void main() {
  printar();
}
