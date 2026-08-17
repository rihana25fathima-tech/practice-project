import 'package:flutter/material.dart';
import 'package:health_insurance/homepage.dart';

void main(){
  runApp(Insurance());
}
class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "insurance",
      home: Homepage(),
    );
  }
}