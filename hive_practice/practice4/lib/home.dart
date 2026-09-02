import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  final box = Hive.box("box");
  @override
  Widget build(BuildContext context) {
    final names = box.values.toList();
    return Scaffold(
         body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // TextField
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
              // Save Button
            ElevatedButton(
              onPressed: () {
                if(nameController.text.trim().isNotEmpty){
                  box.add(nameController.text.trim());
                  nameController.clear();
                  setState(() {
                    
                  });
                }
              },
              child: const Text("Save"),
            ),
            SizedBox(height: 20,),
            Expanded(child: 
            ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(names[index]),
              );
            },
            itemCount: names.length,),)
          ],
        ),
         ),
    );
  }
}