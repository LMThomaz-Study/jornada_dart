import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/14725000/json/'));

  // print(result.body);
  // print(result.statusCode);
  // print(result.request);
  // print(result.headers);

  if (result.statusCode != 200) {
    print('Erro ao buscar CEP');
    return;
  }

  final resultData = json.decode(result.body);

  if (resultData.containsKey('erro')) {
    print('CEP não existe');
  } else {
    print(resultData['localidade']);
  }
}
