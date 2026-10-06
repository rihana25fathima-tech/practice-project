import 'package:app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  //loginshare
  Future<void> login() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool("isLoggedIn", true);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body:Padding(padding:EdgeInsets.all(20),
      child: 
       Column(
        children: [
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(
              hintText: "Enter Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passcontroller,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              login();
              
            },
            child: Text("Login"),
          ),
        ],
      ),
      )
    );
  }
}
