import 'package:flutter/material.dart';
import 'package:practice1/home.dart';

void main(){
  runApp(Practice());
}
class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"ppp",
      home: Homepage(),
    );
  }
}