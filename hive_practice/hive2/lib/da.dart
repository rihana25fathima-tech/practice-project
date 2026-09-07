import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  final box = Hive.box('openbox');
  //save
  void saved(){
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    if(name.isNotEmpty && age.isNotEmpty){
      box.add({
      "name" : name,
      "age" :age,
    });
   }
    ageController.clear();
    nameController.clear();
    setState(() {
      
    });
  }
  //get
  String getename(int index){
  return box.getAt(index)["name"];
  }
  String getage(int index){
    return box.getAt(index)["age"];
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
         saved();
       }, child: Text("save")),
       Expanded(child: ListView.builder(itemBuilder: (context, index) {
         return ListTile(
          title: Text(getename(index)),
          subtitle: Text(getage(index)),
        
         );
       },itemCount: box.length,))
        ]
      ),
      )
    );
  }
}