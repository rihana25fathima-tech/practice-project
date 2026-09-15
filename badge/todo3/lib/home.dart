import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller =TextEditingController();
  TextEditingController agecontroller =TextEditingController();
  final box = Hive.box("openboxx");
  //save
  void savedata(){
    final name = namecontroller.text.trim();
    final age = agecontroller.text.trim();
    box.add({
      "name" : name,
      "age" :age,
    });
    namecontroller.clear();
    agecontroller.clear();
    setState(() {});
  }
//get
String getname(int index){
  return box.getAt(index)["name"];
}
String getage(int index){
  return box.getAt(index)["age"];
}
  //popup
  void show(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
    title: Text("Add your Details"),
    content: Column(
      children: [
        TextField(
          controller: namecontroller,
          decoration: InputDecoration(
            hintText: "Enter name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16,),
         TextField(
          controller: agecontroller,
          decoration: InputDecoration(
            hintText: "Enter age",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () {
          savedata();
          Navigator.pop(context);
        }, child: Text("Save"),
        
        )
      ],
    ),
    );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context, index) {
   
      return ListTile(
        title: Text(getname(index)),
        subtitle: Text(getage(index)),
      );
      },itemCount: box.length,
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        show();
      },child: Icon(Icons.add),),
    );
  }
}