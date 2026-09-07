import 'package:flutter/material.dart';
import 'package:sharedpre/home.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Homepage(),
    );
  }
}