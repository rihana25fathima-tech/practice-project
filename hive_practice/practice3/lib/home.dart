import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
   final box = Hive.box('openBox');
  @override
  Widget build(BuildContext context) {
    final names = box.values.toList();
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10,),
           TextField(
            controller: ageController,
            decoration: InputDecoration(
              hintText: "enter age",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
          box.add([
            nameController.text, 
            ageController.text,
          ]);
          
          nameController.clear();
          ageController.clear();
          setState(() { });
          }, 
          child: Text("Save")),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            final student =names[index];

            return ListTile(
              title: Text(student[0]),
              subtitle: Text(student[1]),
            );
          },
          itemCount: names.length,))

          
        ],
      ),
      ),
    );
  }
}