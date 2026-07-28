import 'package:flutter/material.dart';
import 'package:studentss/login.dart';

void main(){
  runApp(Studentlist());
}

class Studentlist extends StatelessWidget {
  const Studentlist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student",
      home:LoginList() ,
    );
  }
}
