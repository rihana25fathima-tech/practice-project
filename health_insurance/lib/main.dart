import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_insurance/home.dart';

void main(){
  runApp(Insurance());
}
class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "insurance app" ,
      home: Homepage(),
    );
  }
}