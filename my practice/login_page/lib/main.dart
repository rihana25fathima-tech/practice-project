import 'package:flutter/material.dart';
import 'package:login_page/home.dart';

void main(){
  runApp(Login());
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      home: Homepage(),
    );
  }
}