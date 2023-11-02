import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../models/student.dart';

class StudentDioRepository {
  Future<List<Student>> findAll() async {
    try {
      final studentsResult = await Dio().get('http://localhost:8080/students');

      final studentsData = studentsResult.data as List;

      if (studentsData.isEmpty) {
        throw Exception('Não foi encontrado alunos');
      }

      return studentsData
          .map<Student>((studentMap) => Student.fromMap(studentMap))
          .toList();
    } on DioException {
      throw Exception();
    }
  }

  Future<Student> findById(int id) async {
    try {
      final response = await Dio().get('http://localhost:8080/students/$id');

      if (response.data == null) {
        throw Exception();
      }

      return Student.fromMap(response.data);
    } on DioException {
      throw Exception();
    }
  }

  Future<void> insert(Student student) async {
    try {
      await Dio().post(
        'http://localhost:8080/students',
        data: student.toMap(),
      );
    } on DioException {
      throw Exception();
    }
  }

  Future<void> update(Student student) async {
    try {
      await Dio().put(
        'http://localhost:8080/students/${student.id}',
        data: student.toMap(),
      );
    } on DioException {
      throw Exception();
    }
  }

  Future<void> deleteById(int id) async {
    try {
      await Dio().delete('http://localhost:8080/students/$id');
    } on DioException {
      throw Exception();
    }
  }
}
