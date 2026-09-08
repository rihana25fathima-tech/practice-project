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
  List<String> name = [];
  List<String> age = [];
  //save
  Future<void> savedname() async {
    final pref = await SharedPreferences.getInstance();
    pref.setStringList("name", name);
  }

  Future<void> savedage() async {
    final pref = await SharedPreferences.getInstance();
    pref.setStringList("age", age);
    ageController.clear();
    nameController.clear();
  }

  //get
  Future<void> getdname() async {
    final pref = await SharedPreferences.getInstance();
    final named = pref.getStringList("name");
    setState(() {
      name = named ?? [];
    });
  }

  Future<void> getage() async {
    final pref = await SharedPreferences.getInstance();
    final aged = pref.getStringList("age");
    setState(() {
      age = aged ?? [];
    });
  }

  //delete
  Future<void> deletedata(int index) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setStringList("name", name);
    await pref.setStringList("age", age);
    setState(() {
      name.removeAt(index);
      age.removeAt(index);
    });
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
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "age",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                final sname = nameController.text.trim();
                final sage = ageController.text.trim();
                setState(() {
                  name.add(sname);
                  age.add(sage);
                });
                savedname();
                savedage();
              },
              child: Text("save"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(name[index]),
                    subtitle: Text(age[index]),
                    trailing: IconButton(
                      onPressed: () {
                        deletedata(index);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                },
                itemCount: name.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
