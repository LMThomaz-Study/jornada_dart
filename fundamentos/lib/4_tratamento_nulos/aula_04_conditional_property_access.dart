String? nomeCompleto;
// String? nomeCompleto = 'Leonardom Thomaz';

void main() {
  // if convencional
  var nomeCompletoLocal = nomeCompleto;
  if (nomeCompletoLocal != null) {
    print(nomeCompletoLocal.toUpperCase());
  } else {
    print('Nome não preenchido');
  }

  // null aware operator
  var nomeCompletoLocal2 = nomeCompleto ?? 'Nome não preenchido';
  print(nomeCompletoLocal2.toUpperCase());

  // conditional property access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
}
