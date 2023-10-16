

// ignore_for_file: unused_local_variable

void main() {

  // O tipo "int" e "double" herdam do tipo "num" que acaba aceitando valor inteiros e decimais
  // num qualquerNumero = 1;
  // num qualquerNumero2 = 1.2;

  // o tipo "var" irá pegar a inferencia de tipo de acordo com o valor de inicialização
  var yearOld = 23;

  int idade = 23;
  double valorIphone = 12.000;
  String nomeCurso = 'Academia do Flutter';

  // Qualquer tipo de valor pode ser inserido dentro do tipo "Object", pois lá na raiz do Dart tudo é herdado de Object
  Object objetoQualquer = 1.2;

  // É um tipo dinâmico é um do qual pode ter seu tipo alterado várias vezes (não muito recomendado)
  dynamic dynamicQualquer = 'Leonardo';
  dynamicQualquer = 2;
}