import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  final box = Hive.box('openbox');
  //save
  void savedname(){
    String name = nameController.text.trim();
    if(name.isNotEmpty){
      box.add(name);
      nameController.clear();
      setState(() {
        
      });
    }
  }
  //get 
  String getname(int index){
    return box.getAt(index);
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
      //   TextField(
      //   controller: nameController,
      //   decoration: InputDecoration(
      //     hintText: "enter your name",
      //     border: OutlineInputBorder(),
      //   ),
      //  ),
       SizedBox(height: 20,),
       ElevatedButton(onPressed: () {
         savedname();
       }, child: Text("save")),
       Expanded(child: ListView.builder(itemBuilder: (context, index) {
         return ListTile(
          title: Text(getname(index)),
         );
       },itemCount: box.length,))
        ]
      ),
      )
    );
  }
}