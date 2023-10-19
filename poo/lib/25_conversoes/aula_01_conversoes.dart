import 'package:dart_poo/25_conversoes/aluno.dart';
import 'package:dart_poo/25_conversoes/curso.dart';

void main() {
  var frutas = [
    Fruta('Banana'),
    Fruta('Abacaxi'),
    Fruta('Laranja'),
  ];

  var frutasMap = [
    {'nome': 'Banana'},
    {'nome': 'Abacaxi'},
    {'nome': 'Laranja'},
  ];

  // List<Suco> sucos = [];
  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);
  // }

  var sucos = frutas.map((fruta) => Suco(sabor: fruta.nome)).toList();

  var sucosMap = frutasMap
      .map((frutaMap) => Suco(sabor: frutaMap['nome'] ?? 'Sem cabor'))
      .toList();

  print(sucos);
  print(sucosMap);

  // Convertendo um mapa para um objeto
  //  representando como seria feito a conversão duma responta JSON.
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
      {
        'nome': 'Código Limpo',
        'descricao': 'Aprenda a criar códigos autodidatas e limpos'
      },
    ]
  };

  final cursosMap = mapa['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    final nome = curso['nome'] as String;
    final descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();
  final nomeAluno = mapa['nome'] as String;
  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String sabor;

  Suco({
    required this.sabor,
  });

  @override
  String toString() {
    return 'Suco sabor $sabor';
  }
}

class Fruta {
  String nome;

  Fruta(this.nome);
}
