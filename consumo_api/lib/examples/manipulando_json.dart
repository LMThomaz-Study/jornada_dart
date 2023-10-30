import 'dart:convert';

void main() {
  final jsonCEP = '''
  [{
    "cep": "14725-000",
    "logradouro": "",
    "complemento": "",
    "bairro": "",
    "localidade": "Taiaçu",
    "uf": "SP",
    "ibge": "3553104",
    "gia": "6786",
    "ddd": "16",
    "siafi": "7163"
  }]
  ''';

  // Convertendo um JSON em um Map ou List
  final jsonData = json.decode(jsonCEP);

  print(jsonData[0]['localidade']);
  print(jsonData.runtimeType);

  final jsonMap = {
    'curso': 'Academia do Flutter',
    'totalAlunos': 880,
  };

  // Converter um List ou Map para um JSON
  print(json.encode(jsonMap));
}
