import 'dart:developer';

import 'package:bagedep/model/model.dart';
import 'package:bagedep/service/service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptiocontroller = TextEditingController();
 final service = Todoservice();
List<Todomodel>mode = [];

//save

// sho
void show(){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("Enter details"),
      content: Column(
        children: [
          TextField(
            controller: titlecontroller,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
            TextField(
            controller: descriptiocontroller,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),

        ],
      ),
      actions: [
        TextButton(onPressed: () {
          saved();
        }, child: Text("save"))
      ],
    );
  },);
}
  //save
  void saved()async{
   final todomodel = Todomodel(title: titlecontroller.text, description: descriptiocontroller.text);
   await service.settodo(todomodel);
   titlecontroller.clear();
   descriptiocontroller.clear();
   setState(() {
     
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(itemBuilder: (context, index) {
       return ListTile(
        title: ,
        subtitle: ,
       );
     },),
    );
  }
}