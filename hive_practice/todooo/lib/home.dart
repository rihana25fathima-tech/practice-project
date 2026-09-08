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
  final box = Hive.box('openbox');
  // popup
  void showpopop() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add studentt"),
          content: Column(
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
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                saveddata();
              },
              child: Text("save"),
            ),
          ],
        );
      },
    );
  }

  //save
  void saveddata() {
    String name = nameController.text.trim();
    String age = ageController.text.trim();

    setState(() {
      box.add({"name": name, "age": age});
    });
    nameController.clear();
    ageController.clear();
  }

  //get
  String getname(int index) {
    return box.getAt(index)["name"];
  }

  String getage(int index) {
    return box.getAt(index)["age"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: box.isEmpty
          ? Center(child: Text("no addded"))
          : ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(getname(index)),
                  subtitle: Text(getage(index)),
                );
              },
              itemCount: box.length,
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: showpopop,
        child: Icon(Icons.add),
      ),
    );
  }
}
