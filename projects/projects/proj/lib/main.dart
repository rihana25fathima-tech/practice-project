import 'package:flutter/material.dart';
import 'package:proj/splash.dart';

void main(){
  runApp(Flutter1());
}
class Flutter1 extends StatelessWidget {
  const Flutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project",
      home: SplashScreen(),
    );
  }
}