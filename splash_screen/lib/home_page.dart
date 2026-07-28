import 'package:flutter/material.dart';
import 'package:splash_screen/login_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   final List<String> students =[
    "Rihana",
    "fathima",
    "anu",
    "fidu",
    "libu",
  ];
  void logout(BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage(),
    ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

        actions: [
          IconButton(onPressed: (){
            logout(context);
          }, 
          icon: Icon(Icons.logout),
          ),
        ],
      ),
       body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
            leading: CircleAvatar(
              child: Text(
                students[index][0],
              ),
            ),
            title: Text(
              students[index],  
            ),
            subtitle: const Text("Flutter Students",),
            ),
            
          );
        },
       ),
    );
  }
}
