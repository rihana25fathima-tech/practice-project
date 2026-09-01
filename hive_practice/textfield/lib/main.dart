import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield/home.dart';

void main(){
  runApp(TextSave());
}
class TextSave extends StatelessWidget {
  const TextSave({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Verthe ",
      home: Homepage(),
    );
  }
}