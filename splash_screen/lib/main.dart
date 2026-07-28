import 'package:flutter/material.dart';
import 'package:splash_screen/splash_screen.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     title:"myapp",
     home: SplashScreen(),
      
    );
  }
}