import 'package:blooddd/model/model.dart';
import 'package:blooddd/service/service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  final service = Bloodservice();
  List<Bllodmodel> mode = [];

 //update
 void update(int index){
  final  bllodmodel = Bllodmodel(name: nameController.text, age: ageController.text, bloodgroup: bloodGroupController.text);
  service.updateblood(index, bllodmodel);
  nameController.clear();
  ageController.clear();
  bloodGroupController.clear();
  setState(() {
    list();
  });
 }
 //update function

 void updatefunc(int index){
  nameController.text = mode[index].name;
  ageController.text = mode[index].age;
  bloodGroupController.text = mode[index].bloodgroup;
   showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter Update"),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: bloodGroupController,
                decoration: InputDecoration(
                  labelText: 'Blood Group',
                  hintText: 'Enter blood group',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                update(index);
                Navigator.pop(context);
              },
              child: Text("Update"),
            ),
          ],
        );
      },
    );
 }
  //delete
  void delete(int index) {
    service.deleteblood(index);
    setState(() {
      list();
    });
  }

  //list
  void list() {
    mode = service.listblood();
  }

  //save
  void savve() async {
    final bllodmodel = Bllodmodel(
      name: nameController.text,
      age: ageController.text,
      bloodgroup: bloodGroupController.text,
    );
    await service.saveblood(bllodmodel);
    nameController.clear();
    ageController.clear();
    bloodGroupController.clear();
    setState(() {
      list();
    });
  }

  //show
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
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextField(
                controller: bloodGroupController,
                decoration: InputDecoration(
                  labelText: 'Blood Group',
                  hintText: 'Enter blood group',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                savve();
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
  void initState() {
    super.initState();
    list();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: mode.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mode[index].name),
            subtitle: Text("${mode[index].age} ${mode[index].bloodgroup}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    delete(index);
                  },
                  icon: Icon(Icons.delete),
                ),
                IconButton(onPressed: () {
                  updatefunc(index);
                }, icon: Icon(Icons.update))
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
