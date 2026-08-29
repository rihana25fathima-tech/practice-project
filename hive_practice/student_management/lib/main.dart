import 'package:flutter/material.dart';
import 'package:student_management/screens/student_list.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive
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