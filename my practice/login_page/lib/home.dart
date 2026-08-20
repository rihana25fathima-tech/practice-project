import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
    Homepage({super.key});

  TextEditingController  emailController = TextEditingController();

  TextEditingController  passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromARGB(255, 212, 130, 158),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
   

         body:Padding(padding: EdgeInsets.all(20),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("Welcome Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       SizedBox(height: 25,),
          
         TextField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter Email",
        label: Text("Email"),
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.pink))
      ),
    ),
SizedBox(height: 18,),
  TextField(
      controller: passwordController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Enter password",
        label: Text("password"),
        prefixIcon: Icon(Icons.password),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.pink))
      ),
    ),

    SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(onPressed: (){
        if(emailController.text =="Rihana@gmail.com" && passwordController.text == "1234"){
          
        }
      }),
    )
          ]
         ),
          
         )
         );
    
  }     
}