import 'dart:convert';

import 'address.dart';
import 'course.dart';

class Student {
  int id;
  String name;
  int? age;
  List<String> nameCourses;
  List<Course> courses;
  Address address;

  Student({
    required this.id,
    required this.name,
    this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'name': name,
      'nameCourses': nameCourses,
      'courses': courses.map((course) => course.toMap()).toList(),
      'address': address.toMap(),
    };

    if (age != null) {
      map['age'] = age;
    }

    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      nameCourses: List<String>.from(map['nameCourses'] ?? []),
      courses: map['courses']
              ?.map<Course>((courseMap) => Course.fromMap(courseMap))
              .toList() ??
          <Course>[],
      address: Address.fromMap(map['address']),
    );
  }

  factory Student.fromJson(String json) => Student.fromMap(jsonDecode(json));
}
