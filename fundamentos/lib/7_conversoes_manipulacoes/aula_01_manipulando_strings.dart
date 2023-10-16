void main() {
  final nome = 'Leonardo Thomaz';

  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 7);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);
  if (sexoSigla == 'M') {
    print('Olá seu sexo é Masculino');
  }
  if (sexo.startsWith('M')) {
    print('Olá seu sexo é Masculino');
  }
  if (sexo.toLowerCase().startsWith('m')) {
    print('Olá seu sexo é masculino minusculo');
  }
  if (nome.toLowerCase().contains('thom')) {
    print('É da familía Thomaz');
  }

  // Interpolação;
  var primeiroNome = 'Leonardo';
  var sobrenome = 'Thomaz';

  var saudacao =
      'Olá, ' + primeiroNome + ' ' + sobrenome + ' seja muito bem vindo';
  print(saudacao);

  var saudacao2 = 'Olá, $primeiroNome $sobrenome seja muito bem vindo';
  print(saudacao2);

  print('Olá ${primeiroNome.toLowerCase()}');
  print('Soma de 2 + 2 é ${2 + 2}');

  // Split;
  var paciente = 'Leonardo Thomaz;23;Especialista ReactJS;SP';

  print(paciente);

  var dadosPaciente = paciente.split(';');
  print(dadosPaciente);

  for (var dado in dadosPaciente) {
    print(dado);
  }

  // dadosPaciente.forEach((element) {
  //   print(element);
  // });
  dadosPaciente.forEach(print);

  var pacienteList = [
    'Leonardo Thomaz;23;Especialista ReactJS;SP',
    'Livia Costa;21;Arquiteta;SP',
    'Robesto Silva;22;Engenheiro de software;SP',
  ];

  for (var pacienteItem in pacienteList) {
    var dadosPacienteItem = pacienteItem.split(';');
    var nomeCompletoPaciente = dadosPacienteItem[0];
    print('Nome do paciente: $nomeCompletoPaciente');
    var nomes = nomeCompletoPaciente.split(' ');
    print('Primeiro nome do paciente: ${nomes.first}');
    print('Sobrenome do paciente: ${nomes.last}');
    print('------------------------------------------');
  }
}
