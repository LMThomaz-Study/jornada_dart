import 'package:dio/dio.dart';

import '../models/course.dart';

class ProductDioRepository {
  Future<Course> findByName(String name) async {
    try {
      final response = await Dio().get(
        'http://localhost:8080/products',
        queryParameters: {
          'name': name,
        },
      );

      final responseData = response.data as List;

      if (responseData.isEmpty) {
        throw Exception('Produto não encontrado');
      }

      return Course.fromMap(responseData.first);
    } on DioException {
      throw Exception();
    }
  }
}
