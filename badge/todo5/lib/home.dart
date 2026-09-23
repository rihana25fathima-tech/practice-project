import 'package:flutter/material.dart';
import 'package:todo5/model/model.dart';
import 'package:todo5/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  final service = TodoService();
  List<TodoModel> mode = [];
  //get
  void list (){
  mode = service.gettodo();
  }
  //save
  void save ()async{
   final todoModel  = TodoModel(title: titleController.text, description: descriptionController.text);
   await service.savetodo(todoModel);
   titleController.clear();
   descriptionController.clear();
   setState(() {
     list();
   });
  }
  //show
  void show(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("enter details"),
        content: Column(
          children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: "Description",
                ),
              )
          ],
        ),
        actions: [
          ElevatedButton(onPressed: () {
            save();
            Navigator.pop(context);
          }, child: Text("save"))
        ],
      );
    },);
  }

  @override
  void initState(){
    super.initState();
    list();88
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(itemBuilder: (context, index) {
      return ListTile(
       title: Text(mode[index].title),
       subtitle: Text(mode[index].description),
      );
    },itemCount:mode.length ,),
    floatingActionButton: FloatingActionButton(onPressed: () {
      show();
    },child: Icon(Icons.add),),
    );
  }
}