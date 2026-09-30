import 'package:bllodup/model/model.dart';
import 'package:bllodup/service/service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController bllodcontroller = TextEditingController();
  final service = Bloodservice();
  List<Bloodmodel> mode = [];

  //update
  void update(int index) {
    final bloodmodel = Bloodmodel(
      name: namecontroller.text,
      age: agecontroller.text,
      bllodgroup: bllodcontroller.text,
    );
    service.updateblood(index, bloodmodel);
    namecontroller.clear();
    agecontroller.clear();
    bllodcontroller.clear();
    setState(() {
      listt();
    });
  }

  //update func
  void updatefun(int index) {
    namecontroller.text = mode[index].name;
    agecontroller.text = mode[index].age;
    bllodcontroller.text = mode[index].bllodgroup;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("enter update"),

          content: Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: "Enter age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: bllodcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Blood group",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  update(index);
                  Navigator.pop(context);
                },
                child: Text("update"),
              ),
            ],
          ),
        );
      },
    );
  }

  //delete'
  void delete(int index) {
    service.deleteblood(index);
    setState(() {
      listt();
    });
  }

  //list
  void listt() {
    mode = service.listblood();
  }

  //save
  void save() async {
    final bloodmodel = Bloodmodel(
      name: namecontroller.text,
      age: agecontroller.text,
      bllodgroup: bllodcontroller.text,
    );
    await service.saveblood(bloodmodel);
    namecontroller.clear();
    agecontroller.clear();
    bllodcontroller.clear();
    setState(() {
      listt();
    });
  }

  //show
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("enter details"),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(
                  hintText: "Enter age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: bllodcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Blood group",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  save();
                  Navigator.pop(context);
                },
                child: Text("save"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    listt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"), centerTitle: true),
      body: ListView.builder(
        itemCount: mode.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mode[index].name),
            subtitle: Text("${mode[index].age} ${mode[index].bllodgroup}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    delete(index);
                  },
                  icon: Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {
                    updatefun(index);
                  },
                  icon: Icon(Icons.update),
                ),
              ],
            ),
          );
        },
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
