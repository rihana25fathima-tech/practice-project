import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:login2/details.dart';

class Homepag extends StatefulWidget {
  const Homepag({super.key});

  @override
  State<Homepag> createState() => _HomepagState();
}

class _HomepagState extends State<Homepag> {
  final box = Hive.box('open');

  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  //save
  void saved (){
    final name = namecontroller.text.trim();
    final age = agecontroller.text.trim();
    box.add({
      "name" : name,
      "age" :age
    });
    namecontroller.clear();
    agecontroller.clear();
    setState(() { });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Column(
        children: [
             TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "enter name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
               controller: agecontroller,
              decoration: InputDecoration(
                hintText: "enter age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
          saved();
          Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
        }, child: Text("Save"))
        ],
      ),
    );
  }
}