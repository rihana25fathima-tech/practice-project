import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepag extends StatefulWidget {
  const Homepag({super.key});

  @override
  State<Homepag> createState() => _HomepagState();
}

class _HomepagState extends State<Homepag> {
  final box = Hive.box('open');

  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  //save
  void saved() {
    final name = namecontroller.text.trim();
    final age = agecontroller.text.trim();
    box.add({"name": name, "age": age});
    namecontroller.clear();
    agecontroller.clear();
    setState(() {});
  }

  //get
  String getname(int index) {
    return box.getAt(index)["name"];
  }

  String geTage(int index) {
    return box.getAt(index)["age"];
  }

  //deelete
  void delete(int index) {
    box.deleteAt(index);
    setState(() {});
  }
  //update

  void update(int index) {
    final name = namecontroller.text.trim();
    var age = agecontroller.text.trim();

    box.putAt(index, {"name": name, "age": age});
    namecontroller.clear();
    agecontroller.clear();
    setState(() { });
  }

  //function update

  void updatee(int index) {
    namecontroller.text = getname(index);
    agecontroller.text = geTage(index);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("update details"),
          content: Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: "enter age",
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
              child: Text("update"),
            ),
          ],
        );
      },
    );
  }

  //alertt
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add details"),
          content: Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: "enter age",
                  border: OutlineInputBorder(),
                ),
              ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"), centerTitle: true),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(getname(index)),
            subtitle: Text(geTage(index)),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                IconButton(
                  onPressed: () {
                    delete(index);
                  },
                  icon: Icon(Icons.delete),
                ),

                IconButton(
                  onPressed: () {
                    updatee(index);
                  },
                  icon: Icon(Icons.edit),
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
