import 'package:flutter/material.dart';
import 'package:student_management/home.dart';

void main(){
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      title: "Student App",
    );
  }
}