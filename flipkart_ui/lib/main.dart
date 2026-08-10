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
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 241, 235, 235),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.from(alpha: 1, red: 0.475, green: 0.655, blue: 0.804),
        ),
       appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF2874F0),
        foregroundColor: const Color.fromARGB(255, 247, 240, 240),
       ),
       textTheme: TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
        bodyMedium: TextStyle(fontSize: 14,)
       ),

      ),
      home: Homepage(

      ),
    );
  }
}