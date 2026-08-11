import 'package:flutter/material.dart';
import 'package:health_insurance/home.dart';

class Insurace extends StatelessWidget {
  const Insurace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insurance card",
      home: Homepage(),
    );
  }
}