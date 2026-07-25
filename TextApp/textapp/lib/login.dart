import 'package:flutter/material.dart';
import 'package:textapp/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController passwordController =TextEditingController();
      final  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {




      
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 7, 82),
        centerTitle: true,
        title: Text("STUDENT", style: TextStyle(fontWeight: FontWeight.bold)),
      ),

      //textfiled
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "User name",
                hintText: "Enter your name",
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 247, 55, 119),
              ),
              onPressed: () {
              if(usernameController.text == "Rihana"&&
                 passwordController.text=="1234"){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> HomePage(),
                  ),
                  );
                 }else{
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Login  faild"),
                      content: Text("invalid your usename or password"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                        )
                      ],
                    );
                  });
                 }
              },
              child:Text("Login",
              style: TextStyle(
                color: Colors.black,
              ),
          ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
