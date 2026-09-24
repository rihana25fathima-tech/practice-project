

import 'package:flutter/material.dart';
import 'package:todo77/list.dart';
import 'package:todo77/model/model.dart';
import 'package:todo77/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController titlecontroller =  TextEditingController();
  TextEditingController  descriptiomecontroller = TextEditingController();
 
 final service = Servicetodo();
  
//save
void saveddata(){
final model = Todomodel(titile: titlecontroller.text, description: descriptiomecontroller.text);
service.savedtodo(model);
titlecontroller.clear();
descriptiomecontroller.clear();
setState(() {

});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: descriptiomecontroller,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              saveddata();
              Navigator.push(context, MaterialPageRoute(builder: (context) => Listpage(),),);
            }, child:Text("save"),),
          ],
        ),
      ),
    );
  }
}