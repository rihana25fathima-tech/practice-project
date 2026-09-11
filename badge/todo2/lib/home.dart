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
  final box = Hive.box("open");
  //save
  void save() {
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    setState(() {
      box.add({"name": name, "age": age});
      nameController.clear();
      ageController.clear();
    });
  }

  //get
  String getname(int index) {
    return box.getAt(index)["name"];
  }

  String getage(int index) {
    return box.getAt(index)["age"];
  }

  //popup
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter your details"),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10),

              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Age',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                save();
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }
  //delete
  void deletee(int index) {
    setState(() {
      box.deleteAt(index);
    });
  }
  //update
  void update(int index) {
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    box.putAt(index, {"name": name, "age": age});
    nameController.clear();
    ageController.clear();
    setState(() {});
  }

  //update functio
  void updatefunction(int index) {
    nameController.text = getname(index);
    ageController.text = getage(index);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter your details"),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10),

              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Age',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                update(index);
                Navigator.pop(context);
              },
              child: Text("save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(getname(index)),
            subtitle: Text(getage(index)),
            trailing:Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             IconButton(
              onPressed: () {
                deletee(index);
              },
              icon: Icon(Icons.delete),
            ),
                IconButton(
              onPressed: () {
                updatefunction(index);
              },
              icon: Icon(Icons.update),
            ),
            ],
            ),
          );
        },
        itemCount: box.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
