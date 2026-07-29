import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proj/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState(){
    super.initState();

    Timer(
      Duration(minutes: 1),
      (){
        Navigator.pushReplacement(
          context,
         MaterialPageRoute(
          builder:(context) => LoginScreen(),
          )
        );
      }
    );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(232, 244, 234, 238),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Image.asset(
            "assets/my_image.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Rihana",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      
        const SizedBox(height: 30),
        Text(
          "WELCOME",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),


        ],
      ),
    ),
    );
  }
}