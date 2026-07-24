
import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';


void main(){
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "loginApp",
      home:LoginScreen(),
    );
  }
}