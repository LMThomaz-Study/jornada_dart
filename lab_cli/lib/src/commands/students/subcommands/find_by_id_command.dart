import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class FindByIdCommand extends Command {
  final StudentRepository studentRepository;

  @override
  String get description => 'Find Student By Id';

  @override
  String get name => 'byId';

  FindByIdCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  Future<void> run() async {
    if (argResults?['id'] == null) {
      print('Por favor envie o ID do aluno com o comando --id=0 ou -i 0');
      return;
    }

    final id = int.parse(argResults?['id']);

    print('Aguarde, buscando dados...');
    final student = await studentRepository.findById(id);

    print('--------------------------------------');
    print('Aluno ${student.name}');
    print('--------------------------------------');
    print('Nome: ${student.name}');
    print('Idade: ${student.age ?? 'Não informado'}');
    print('Curso: ');
    for (var course in student.nameCourses) {
      print('   $course');
    }
    print('Endereço:');
    print('   ${student.address.street} (${student.address.zipCode})');
  }
}
