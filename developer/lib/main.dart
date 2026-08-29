import 'package:developer/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Developer());
}
class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Developers",
      home: Homepage(),
    );
  }
}