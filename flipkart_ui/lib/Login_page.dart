import 'package:flipkart_ui/constants/colors.dart';
import 'package:flipkart_ui/home.dart';
// import 'package:flipkart_ui/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController usernameController =TextEditingController();
TextEditingController passwordController =TextEditingController();
TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    
    
    
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 100,
        title: Padding(padding: EdgeInsets.only(bottom: 2,left: 60),
        child: Row(
          children: [
            // Text("Flipkart",
            // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: const Color.fromARGB(255, 7, 122, 215)),
            // ),
            
            Image.asset("assets/images/flip.jpg",
            width: 35,
            height: 30,),
             SizedBox(width: 10,),
             Text("Flipkart",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: const Color.fromARGB(255, 7, 122, 215)),
            ),
          ],
        ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            
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
                SizedBox(height: 20,),
                TextField(
                  controller: numberController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Your phone number",
                    labelText: "Mobile number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),),);
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 140, 235),
                  foregroundColor: Colors.white,
                ),
                child: Text("Login",style: TextStyle(
                  fontSize: 23,
                ),),
                ),
               )

          ],
        ),
      ),
      
    );
  }
}