import 'package:flutter/material.dart';
import 'package:splash_screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController usernameController =TextEditingController();
TextEditingController passwordController =TextEditingController();

void login(){
  if(usernameController.text=="Rihana" &&
  passwordController.text=="1234"){
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  HomePage(),
   ));
  }else{
    showDialog(context:context,
    builder : (context){
      return AlertDialog(
        title: Text("Login faild"),
      
      );
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("HOME APP",
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    
    body:Padding(padding: EdgeInsets.all(20),
    child: Column(
      children: [

        //username
        TextField(
          controller:usernameController,
          decoration: InputDecoration(
            labelText: "User Name",
            hintText: "Enter your name",
            border: OutlineInputBorder(),
          ),
        ),
      SizedBox(height: 20),

        //password
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            border: OutlineInputBorder(),
          ),
        ),
      SizedBox(height: 20),

      ElevatedButton(onPressed: login, child: Text("Login"))
      ],
    ),) ,
    );
  }
}