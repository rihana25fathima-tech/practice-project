import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController =TextEditingController() ;
  // TextEditingController  ageController =TextEditingController();
  List<String>name = [];
  Future<void>saveddata()async{
  final pref = await SharedPreferences.getInstance();
  pref.setStringList("name", name);
  nameController.clear();
  }
  Future<void>getdata()async{
  final pref = await SharedPreferences.getInstance();
 final save = pref.getStringList("name");
 setState(() {
   name = save ?? [];
 });
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
            //  TextField(
            //   controller: ageController,
            //   decoration: InputDecoration(
            //     labelText: "Enter age",
            //     border: OutlineInputBorder(),
            //   ),
            // ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
             saveddata();
             setState(() {
               name.add(nameController.text);
             });
              },
              child: const Text("Submit"),
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) { return
              ListTile(
            title: Text(name[index]),
              );
            },
            itemCount: name.length,))
          ],
        ),
      ),
    );
  }
}
