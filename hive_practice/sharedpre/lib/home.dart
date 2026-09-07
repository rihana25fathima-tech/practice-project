import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
List<String>name = [];
List<String>age = [];
  TextEditingController ageController = TextEditingController();
//save 
Future<void>savename()async{
final pref = await SharedPreferences.getInstance();
pref.setStringList("name", name);
}
Future<void>saveage()async{
final pref = await SharedPreferences.getInstance();
pref.setStringList("age", age);
}
//get
Future<void>getname()async{
final pref = await SharedPreferences.getInstance();
 final savedname  = pref.getStringList("name");
  name = savedname ?? [];
}
Future<void>getage()async{
final pref = await SharedPreferences.getInstance();
 final savedage  = pref.getStringList("name");
  name = savedage ?? [];
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(padding: EdgeInsets.all(20),
       child: Column(
        children: [
       TextField(
        controller: nameController,
        decoration: InputDecoration(
          hintText: "enter your name",
          border: OutlineInputBorder(),
        ),
       ),
        TextField(
        controller: ageController,
        decoration: InputDecoration(
          hintText: "enter your age",
          border: OutlineInputBorder(),
        ),
       ),
       SizedBox(height: 20,),
       ElevatedButton(onPressed: () {
         savename();
         saveage();
         String names = nameController.text.trim();
         String ages = ageController.text.trim();
         setState(() {
           name.add(names);
           age.add(ages);
         });
         nameController.clear();
         ageController.clear();
       }, child: Text("save")),
       Expanded(child: ListView.builder(itemBuilder: (context, index) {
         return ListTile(
          title: Text(name[index]),
          subtitle: Text(age[index]),
        
         );
       },
       itemCount: name.length,))
        ]
      ),
      )
    );
  }
}