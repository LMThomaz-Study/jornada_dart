import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/student_repository.dart';

class DeleteCommand extends Command {
  final StudentRepository studentRepository;

  @override
  String get description => 'Delete student by id';

  @override
  String get name => 'delete';

  DeleteCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

  @override
  Future<void> run() async {
    final idArg = argResults?['id'];
    final id = int.tryParse(idArg);

    if (idArg == null) {
      print('Por favor informe o id do aluno com o comando --id=0 oi -i 0');
      return;
    } else if (id == null) {
      print('Por favor informe o id válido sendo apenas números');
      return;
    }

    final student = await studentRepository.findById(id);

    print('Deseja realmente deletar o aluno ${student.name}? (S ou N)');
    final confirmDelete = stdin.readLineSync();
    if (confirmDelete?.toLowerCase() != 's') {
      print('Operação de remoção cancelada');
      return;
    }

    await studentRepository.deleteById(id);
    print('O aluno ${student.name} foi removido com sucesso');
  }
}
