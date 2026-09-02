import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    final box = Hive.box("namebox");
 final names = box.values.toList();
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "enter name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
          final box = Hive.box("namebox");
          if(nameController.text.trim().isNotEmpty){
            box.add(nameController.text.trim());
            nameController.clear();
            setState(() { });
          }
          },
           child: Text("Save"),),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          },
          itemCount: names.length,))
        ],
      ),
      ),
    );
  }
}