import 'package:card/home.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(Card());
}
class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Homepage",
      home: Homepage(),
    );
  }
}