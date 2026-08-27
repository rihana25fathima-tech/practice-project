import 'package:flutter/material.dart';
import 'package:health/homepage.dart';

void main(){
  runApp(Health());
}

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Healthapp",
      home: Homepage(),
    );
  }
}