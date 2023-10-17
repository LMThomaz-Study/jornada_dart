import 'package:dart_poo/12_callable_class/enviar_email.dart';

void main() {
  var enviarEmail = EnviarEmail();
  // enviarEmail.enviar('email@hotmail.com');
  enviarEmail('email@hotmail.com'); // Irá chamar o método call da classe
}
