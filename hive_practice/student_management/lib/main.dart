import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_management/models/student_model.dart';
import 'package:student_management/screens/student_list.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //register studentadapter model
Hive.registerAdapter(StudentModelAdapter());

  await Hive.openBox<StudentModel>('studentBox');
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentList(),
      title: "Student App",
    );
  }
}