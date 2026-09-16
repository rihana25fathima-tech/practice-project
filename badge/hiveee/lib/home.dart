import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller = TextEditingController();
  final box = Hive.box('openbox');
  //save
  void saveddata(){
   final name = namecontroller.text.trim();
   box.add({
    "name" : name,
   });
   namecontroller.clear();
   setState(() {
     
   });
  }
  //get
  String getname(int index){
    return box.getAt(index)["name"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      
      TextField(
        controller: namecontroller,
        decoration: InputDecoration(
          hintText:"name",
        ),
        
      ),
      SizedBox(height: 10,),
      ElevatedButton(onPressed: () {
        saveddata();
      }, child: Text("save")),
       SizedBox(height: 10,),
    Expanded(child:
      ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(getname(index)),
        );
      },itemCount: box.length,)
    ),
      ],
      )
    );
  }
}