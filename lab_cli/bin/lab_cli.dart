// import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:lab_cli/src/commands/students/students_command.dart';

// dart .\bin\lab_cli.dart -d --name="Leonardo Thomaz" -t console-full

void main(List<String> arguments) {
  CommandRunner('Lab CLI', '')
    ..addCommand(StudentsCommand())
    ..run(arguments);
}
