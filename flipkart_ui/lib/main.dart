import 'package:flipkart_ui/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Flipcard());
}
class Flipcard extends StatelessWidget {
  const Flipcard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flipcard ui",
      home: Homepage(

      ),
    );
  }
}