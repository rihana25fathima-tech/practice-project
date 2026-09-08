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
void savedata()async{
String name = nameController.text.trim();
String age = ageController.text.trim();
setState(() {
  box.add({
   "name" :name,
   "age" :age,
  });
});
nameController.clear();
ageController.clear();
}
//get
String getname(int index){
return  box.getAt(index)["name"];
}
String getage(int index){
return  box.getAt(index)["age"];
}
//delete
void deletedata(int index){
  setState(() {
     box.deleteAt(index);
  });
}

  //popup
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Student"),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "entr name",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(
                  hintText: "entr age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("cancel"),),
              ElevatedButton(onPressed: () {
                savedata();
              }, child: Text("save"),),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:box.isEmpty
      ? Center(
        child: Text("No Addde"),
      )
       :ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(getname(index)),
          subtitle: Text(getage(index)),
          trailing: IconButton(onPressed: () {
            deletedata(index);
          }, icon: Icon(Icons.delete),),
          
        );
      },itemCount: box.length,),
      floatingActionButton: FloatingActionButton(onPressed: show,
      child: Icon(Icons.add),),
    );
  }
}
