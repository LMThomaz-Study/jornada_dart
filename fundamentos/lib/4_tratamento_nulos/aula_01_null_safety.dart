// ignore_for_file: unnecessary_null_comparison

String? nomeSuperior;

void main() {
  String nome = '';
  String? nomeNula;

  if (nomeNula != null) {
    nomeNula.isEmpty;
  }

  var nomeLocal = nomeSuperior;
  if (nomeLocal != null) {
    nomeLocal.isEmpty;
  }

  nome.isEmpty;
}
