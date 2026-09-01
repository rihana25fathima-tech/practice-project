import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();

  String savedName = " ";
@override
void initState(){
  super.initState();
  getName();
}
// shared prefernecil data edkkan
Future<void>getName()async{
     final prefs = await SharedPreferences.getInstance();

     setState(() {
       savedName = prefs.getString("my text") ?? "";
     });
}
// save cbheyyan
Future<void>setName()async{
   final prefs = await SharedPreferences.getInstance();

   await prefs.setString(
    "my text", 
   nameController.text
   );
   setState(() {
     savedName = nameController.text;
   });
   nameController.clear();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "enter youer name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: setName,
              child: Text("save"),
            ),

            SizedBox(height: 30),
            Text(savedName, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
