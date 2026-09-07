import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
final box = Hive.box('openbox');

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  //save
  void saveddata(){
    String naame = nameController.text.trim();
    String age = ageController.text.trim();
    if(naame.isNotEmpty && age.isNotEmpty){
      box.add({
        "name" : naame,
        "age" : age,
      });
      nameController.clear();
      ageController.clear();
      setState(() {
        
      });
    }
  }
  //get
  String getname(int index){
return box.getAt(index)["name"];
  }
  String getage(int index){
return box.getAt(index)["age"];
  }
//poppup
void popup (){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text("add student"),
      content: Column(
         children: [
           TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(),
              ),
            ),
         ],
      ),
      actions: [
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child:  Text("cancel"),),
        ElevatedButton(onPressed: () {
          saveddata();
        }, child: Text("save"),),
      ],
    );
  },);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: box.isEmpty
      ? Center(
         child: Text("add student detail"),
      )
      : ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(getname(index)),
                  subtitle: Text(getage(index)),
                );
              },
                ),
                floatingActionButton: FloatingActionButton(onPressed: popup,child:Icon( Icons.add,) ),
    );
  }
}