// Em variáveis superiores sou obrigado a inicializar ou definir através do `?` dizendo que ela pode ser nula
// Exemplo permitidos:
// -> String nomeCompletoSuperior = 'Leonardo';;
// -> String? nomeCompletoSuperior;
// Exemplo não permitido:
// -> String nomeCompletoSuperior;

String nomeCompletoSuperior = 'Leonardo';
String? nomeCompletoSuperiorOpc;

void main() {
  // Variáveis locais não precisam ser inicializadas de cara, porem podem ser criadas sem valor e depois ser atribuido um valor

  // O Dart não aceita valores nulos, porém passando `?` na frente do tipo, ele deixa a variável aceitar um valor `null`
  // -> Exemplo: String? nomeCompleto;
  // Não é necessário passar o valor `null`, pois se passar nada ele já define como nulo
  // -> Exemplo: String? nomeCompleto = null;
  String nomeCompleto = 'Leonardo Thomaz';
  String? nomeCompletoOpc;

  nomeCompletoOpc = '';
  nomeCompletoSuperiorOpc = '';

  // Passando `!` na frente do nome da variável, VOCÊ está definindo que a variável terá valor
  // print(nomeCompleto!.length);

  print(nomeCompleto.length);
  print(nomeCompletoOpc.length);
  // O Dart não consegue definir uma variável superior nula (nullable) para não nula (non-null)
  // ou seja, não conseguem mudar a tipagem de fora do escopo
  // print(nomeCompletoSuperiorOpc.length);
}
