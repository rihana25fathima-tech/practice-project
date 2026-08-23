import 'package:flutter/material.dart';
import 'package:furniture/firspage.dart';


void main(){
  runApp(Furniture());
}
class Furniture extends StatelessWidget {
  const Furniture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Homepage",
      home: First_Page(),
    );
  }
}