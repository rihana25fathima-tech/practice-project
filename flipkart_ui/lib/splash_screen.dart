import 'dart:async';

import 'package:flipkart_ui/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),
      ),);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 236, 241),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset("assets/images/logo.jpg"),
      ],),),
      
    );
  }
}