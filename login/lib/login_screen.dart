import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
          );
        },
       child: Text("Login",
       style: TextStyle(fontSize: 40),),

      ),
    ),
    );
}
}