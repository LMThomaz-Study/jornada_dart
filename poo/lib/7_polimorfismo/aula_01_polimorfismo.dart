import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesia.dart';

// Polimorfismo, é sobrescrever caracteriscas das classes herdadas ou agregar funcionalidades/informações

void main() {
  // Parto

  var medicos = <Medico>[
    ResidenteAnestesia(),
    Obstetra(),
    Pediatra(),
  ];

  // Realizar um parto

  for (Medico medico in medicos) {
    medico.operar();
  }
}
