import 'package:banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();

  await mySqlConnection.query(
    'insert into aluno(id, nome) values (?,?)',
    [
      null,
      'Leonardo Thomaz',
    ],
  );

  var resultadoSelect = await mySqlConnection.query('select * from aluno');
  for (var row in resultadoSelect) {
    print('Resultado por indice:');
    print(row[0]);
    print(row[1]);

    print('Resultado por nome de coluna:');
    print(row['id']);
    print(row['nome']);
  }

  try {
    await mySqlConnection.query(
      'update aluno set nome = ? where id = ?',
      [
        'Leonardo Thomaz Updated',
        1,
      ],
    );
  } on MySqlException {
    print('Erro ao atualizar dados do aluno');
  }

  var resultadoSelectUnico = await mySqlConnection.query(
    'select * from aluno where id = ?',
    [1],
  );
  if (resultadoSelect.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;
    print('Parâmetro único:');
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }
}
