
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management/models/student_model.dart';

class StudentService {
  // Private constructor
  StudentService._privateConstructor();

  static final StudentService instance =
      StudentService._privateConstructor();

  // Typed Hive Box
  final Box<StudentModel> studentBox =
      Hive.box<StudentModel>('studentBox');

  // CREATE
  Future<void> addStudent(StudentModel student) async {
    await studentBox.add(student);
  }

  // READ
  List<StudentModel> getStudents() {
    return studentBox.values.toList();
  }

  // UPDATE
  Future<void> updateStudent(
    int index,
    StudentModel student,
  ) async {
    await studentBox.putAt(index, student);
  }

  // DELETE
  Future<void> deleteStudent(int index) async {
    await studentBox.deleteAt(index);
  }
}