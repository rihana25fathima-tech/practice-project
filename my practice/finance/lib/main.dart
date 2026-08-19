import 'package:finance/Home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Finance());
}
class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "fionance",
      home: Homepage(),
    );
  }
}