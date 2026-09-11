import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController =TextEditingController();
  TextEditingController ageController = TextEditingController();

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

}, child: Text("save"),)
      ]
      ),
      ),
    );
  }
}