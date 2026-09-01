import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  String savedName = "";
  @override
  void initstate(){
    super.initState();
    getName();
  }
  //saved
   Future<void>savedName()async{
   final prefs = await SharedPreferences.getInstance();
   //save cheyyan
   await prefs.setString(
    "name",
    nameController.text,
    );
   }
  // name edkkan
  Future<void>getName()async {
   final prefs = await SharedPreferences.getInstance();
   savedName = prefs.getString("name")??"";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            savedName;
          },
          child: Text("Save"))
        ],
      ),
      ),
    );
  }
}