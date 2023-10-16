// ignore_for_file: unused_local_variable, unused_catch_stack

void main() {
  String idade = '23 ';
  String? nome;

  try {
    var idadeParsed = int.parse(idade);
    // nome!.toLowerCase();

    if (idadeParsed == 23) {
      throw Exception(); // Forçando um exception
    }
  } on FormatException catch (e, s) {
    // print(e); // Printa o erro em sí
    // print(s); // Printa o caminho de qual foi o arquivo
    print('teste');
  } on TypeError {
    print('Erro ao converter idade 2x');
  } on Exception {
    print('erro na condição');
  } catch (erro) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }
}
