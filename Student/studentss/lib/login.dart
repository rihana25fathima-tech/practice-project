import 'package:flutter/material.dart';

class LoginList extends StatelessWidget {
  const LoginList({super.key});

  @override
  Widget build(BuildContext context) {

     final TextEditingController  emailController =TextEditingController();
  
     final TextEditingController  PasswordController = TextEditingController();



    return Scaffold(
     appBar: AppBar(
      title: Text("STUDENT LIST") ,
     ),
     
     body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text("Email",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
         
         TextField(
          controller: emailController,
          decoration: const InputDecoration(
         border: OutlineInputBorder(),
         hintText: "Enter Your Email",
          ),
         ),

         Text("PassWord",
         style: TextStyle(
          fontSize: 18,
          fontWeight:FontWeight.bold,
         ),
         ),
         TextField(
          controller: PasswordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter your password",
          ),
         )

        ],
      ),
       ),
              

      
    );
  }
}