import 'package:banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();

  print(mySqlConnection.toString());
}
