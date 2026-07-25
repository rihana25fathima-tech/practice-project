import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      centerTitle: true,
      title: Text("Home page")
      ,
     ),
     body: Center(
      child: Text(
        "Hi,Rihana",
        style: TextStyle(
          fontSize: 25,
          
        ),
      ),
     ),
    );
  }
}