import 'package:flutter/material.dart';
import 'package:food/home.dart';

void main(){
  runApp(Food());
}
class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food prject",
      home: Homepage(),
    );
  }
}