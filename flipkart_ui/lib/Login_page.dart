import 'package:flipkart_ui/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController usernameController =TextEditingController();
TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {

    
    
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 219, 102),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100,),
            
            Center(
              child: Text("Login",
              style: TextStyle(
        color:Color.fromARGB(255, 15, 11, 11) ,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
              ),
            ),
            
              SizedBox(height: 30,),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  labelText: "Username",
                  hintStyle: TextStyle(color: const Color.fromARGB(255, 16, 14, 14)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    )
                  )
                ),
               
               SizedBox(height: 25,),
               SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                     if(usernameController.text == "Rihana" &&
                     passwordController.text == "1234"
                     ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),),);
                     }else{
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                        title: Text("login faild"),
                        content: Text("Invalid usernam eor password"),
                        actions: [
                           TextButton(onPressed: (){
                            Navigator.pop(context);
                           },
                           child: Text("OK"),
                           ),
                        ],
                      );
                      },);
                      
                     }
                     
                },
                child: Text("Login"),
                ),
               )

          ],
        ),
      ),
      
    );
  }
}