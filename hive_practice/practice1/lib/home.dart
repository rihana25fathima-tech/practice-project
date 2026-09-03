import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  List<String> savedname = [];
  List<String> savedage = [];
  //save
  Future<void> savedata() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList("name", savedname);
    prefs.setStringList("age", savedage);
  }

  //read
  Future<void> getdata() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      savedname = prefs.getStringList("name") ?? [];
      savedage = prefs.getStringList("age") ?? [];
    });
  }
  //delete
  Future<void>deletedata(int index)async{
  final prefs = await SharedPreferences.getInstance();
  setState(() {
    savedname.removeAt(index);
    savedage.removeAt(index);
  });
  await savedata();
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
                hintText: "enter name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "enter age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  savedname.add(nameController.text);
                  savedage.add(ageController.text);
                });
                await savedata();
                nameController.clear();
                ageController.clear();
              },
              child: Text("Save"),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(savedname[index]),
                    subtitle: Text(savedage[index]),
                    trailing: IconButton(
                      onPressed: () {
                        deletedata(index);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                },
                itemCount: savedname.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
