

import 'package:hive_flutter/hive_flutter.dart';
part 'student_model.g.dart';


@HiveType(typeId: 0)
class StudentModel {
  @HiveField(0)
  String name;
  @HiveField(1)
  String age;
  @HiveField(2)
  String course;

  StudentModel({
    required this.name,
    required this.age,
    required this.course,
  });
}