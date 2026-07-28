import 'dart:async';


import 'package:flutter/material.dart';
import 'package:splash_screen/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
       
       Timer(Duration(seconds: 3),
       (){
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => LoginPage(),
        ),
        );
       },
       );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 121, 3, 3),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.home,
             size: 100,
             ),
             SizedBox(height: 20),
             Text("FLUTTER APP",
             style: TextStyle(fontSize: 20,
             color: Colors.white,
             fontWeight: FontWeight.bold,             ),
             )
             
            ],
          ),
        ),
    );
  }
}
