// ignore_for_file: unused_local_variable, avoid_init_to_null, prefer_interpolation_to_compose_strings

void main() {
  // Map é uma referência de <chave,valor>{chave:valor}
  final paciente = <String, String>{
    'nome': 'Leonardo Thomaz',
    'curso': 'Academia do Flutter',
  };

  // O mapa pode ser nullable, mas se for criado deve conter a chave e o valor non-null
  Map<String, String>? pacienteNullSafety;

  // O mapa e o valor não podem ser nullable, mas a chave pode ser nullable
  var pacienteNullSafety2 = <String?, String>{
    null: 'Leonardo',
  };

  // O mapa e a chave não podem ser nullable, mas o valor pode ser nullable
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  // Irá adicionar apenas se NÃO houver a chave existente
  produtos.putIfAbsent('nome', () => 'Café em Grão');
  produtos.putIfAbsent('nome', () => 'Café do bom');
  print(produtos);

  // Irá modificar o valor de uma chave
  produtos.update('nome', (value) => 'Café com goiba');
  // produtos.update('nome2', (value) => 'Café com goiba'); // Caso a chave não exista, irá extourar uma exception
  print(produtos);
  // Para modificar e registrar a chave caso não exista
  produtos.update(
    'preco',
    (value) => '89',
    ifAbsent: () => '89',
  );

  // Recuperando valor
  print('Produto ${produtos['nome']}');

  // Apenas para varrer o Map, NÃO aceita processo asyncrono
  produtos.forEach((key, value) {
    print('produto » $key: $value');
  });

  // Fazer algum processo asyncrono dentro dele
  for (var entry in produtos.entries) {
    print('produto » ${entry.key}: ${entry.value}');
  }

  // Percorrer todas as chaves do Map
  for (var key in produtos.keys) {
    print('chave » $key');
  }

  // Percorrer todos os valores do Map
  for (var value in produtos.values) {
    print('value » $value');
  }

  // Podemos percorrer o Map para transforma-lo num Map novo
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_novo', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Leonardo Thomaz',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Do nível básico ao avançado, desde Dart até o Flutter'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao':
            'Aprenda a criar a arquitetura ideal para cada tipo de projeto'
      },
    ]
  };
}
