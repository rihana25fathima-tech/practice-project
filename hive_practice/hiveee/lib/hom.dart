import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  final box = Hive.box('opnbox');
  TextEditingController ageController = TextEditingController();
  //save
  void savedata() {
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    if(name.isNotEmpty && age.isNotEmpty){
      box.add({
        "name" :name,
        "age" : age,
      });
    }
    nameController.clear();
    ageController.clear();
    setState(() {});
  }

//get
String getname(int index){
final names = box.getAt(index);
return  names["name"];
}

String getage(int index){
final ages = box.getAt(index);
return  ages["age"];
}
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                savedata();
              },
              child: Text("save"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(title: Text(getname(index)),subtitle: Text(getage(index)),);
                  
                },
                itemCount: box.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
