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
  //save
  void saved() {
    String name = nameController.text.trim();
    String age = ageController.text.trim();
    setState(() {
      box.add({"name": name, "age": age});
      nameController.clear();
      ageController.clear();
    });
  }

  //delate
  Future<void> delete(int index) {
    return box.deleteAt(index);
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
          title: Text("Enter details"),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "enter tour name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  hintText: "enter tour age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                saved();
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }
  //update
  void update (int index){
String name = nameController.text.trim();
String age = ageController.text.trim();
setState(() {
  box.putAt(index,{
   "name" :name,
   "age" : age,
  });
  nameController.clear();
  ageController.clear();
});
Navigator.pop(context);
  }
//update show
void showUpdate(int index) {
  nameController.text = getname(index);
  ageController.text = getage(index);

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Update details"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "Enter your age",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                update(index);
              },
              child: Text("Update"),
            ),
          ],
        ),
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

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
             IconButton(
              onPressed: () {
                setState(() {
                  delete(index);
                });
              },
              icon: Icon(Icons.delete),
            ),
            IconButton(onPressed: () {
              // nameController.text = getname(index);
              // ageController.text = getage(index);
              showUpdate(index);
            }, icon: Icon(Icons.update),),
              ]
            )
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
