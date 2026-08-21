import 'package:flutter/material.dart';
import 'package:transection/home.dart';

void main(){
  runApp(Transactiopn());
}

class Transactiopn extends StatelessWidget {
  const Transactiopn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Transaction",
      home: Homepage(),
    );
  }

}