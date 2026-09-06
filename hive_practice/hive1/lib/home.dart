import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
 final box = Hive.box('openbox');
 //save
  void savedata(){
  String name = nameController.text.trim();
  if(name.isNotEmpty){
   box.add(name);
   nameController.clear();
   setState(() {
     
   });
  }
  }
//get
String getdata(int index){

return  box.getAt(index).toString();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
            savedata();
              },
              child: const Text('Save'),
            ),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  getdata(index),
                ),
              );
            },))
          ],
        ),
      ),
    );
  }
}