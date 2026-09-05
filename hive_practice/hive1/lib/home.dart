import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController =TextEditingController() ;
  var box = Hive.box('openbox');
  //save
  void savedname(){
    String name = nameController.text;
    box.put("name", name);
    nameController.clear();
    setState(() {
      
    });
  }
  //get
  String getname(){
    return  box.get("name") ?? "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
          

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  box.add(nameController.text);
                });
             savedname();
              },
              child: const Text("Submit"),
            ),
            // Expanded(child:  ListView.builder(itemBuilder: (context, index) {
            //   return ListTile(
            //     title: Text( ),
            //   )
            // },))
            Text(
              getname(),
            )
          ],
        ),
      ),
    );
  }
}