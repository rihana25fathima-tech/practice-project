import 'package:flutter/material.dart';
import 'package:money/Home.dart';

void main(){
  runApp(Money());
}
class Money extends StatelessWidget {
  const Money({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Money Appp",
      home: Homepage(),
      
    );
  }
}