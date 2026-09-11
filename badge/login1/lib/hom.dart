import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:login1/details.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController =TextEditingController();
  TextEditingController ageController = TextEditingController();
  final box = Hive.box("open");
  //save
  void saved(){
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    setState(() {
      box.add({
      "name" : name,
      "age" :age,
      });
      nameController.clear();
      ageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child:Column(
      children: [
       TextField(
  controller: nameController,
  decoration: InputDecoration(
    hintText: 'Enter Name',
    border: OutlineInputBorder(),
  ),
),

SizedBox(height: 10),

TextField(
  controller: ageController,
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    hintText: 'Enter Age',
    border: OutlineInputBorder(),
  ),
),
SizedBox(height: 20,),
ElevatedButton(onPressed: () {
 saved();
 Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
}, child: Text("save"),)
      ]
      ),
      ),
    );
  }
}