// ignore_for_file: unused_local_variable

void main() {
  // ? -> Nullable (aceita nulo)
  // Sem nada -> non-null (não aceita nulo)

  // Não aceita nulo
  var nomes = [];

  // A lista pode ser nula, mas os itens não podem ser nulos
  List<String>? nomesNulos;

  //! Desta forma, isso não funciona
  // List<String> nomesInternosNaoNulos = <String>[null];

  // A lista NÃO pode ser nula, mas os itens podem ser nulos
  var nomesNull = <String?>['Leonardo', null, 'Thomaz'];

  // A lista pode ser nula e os itens também podem ser nulos
  List<String?>? nomesInternosNulos1 = [null, 'Leonardo'];
  // List<String?>? nomesInternosNulos1 = null;
}
