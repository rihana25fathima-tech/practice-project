import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final box = Hive.box('openbox');

  TextEditingController  namecontroller = TextEditingController();
//save
void savedata(){
  String name = namecontroller.text.trim();
  setState(() {
     box.add(name);
  });
 namecontroller.clear();
}
//get
String getname(int index){
  return box.getAt(index);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            savedata();
          }, child: Text("Save"),),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(getname(index)),
            );
          },itemCount: box.length,))
        ],
      ),
      ),
    );
  }
}