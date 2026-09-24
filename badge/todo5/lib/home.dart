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
  void list() {
    mode = service.gettodo();
  }

  //delete
  void deleteee(int index) {
    service.deletetodo(index);
    setState(() {
      list();
    });
  }

  //update
  void updatee(int index) async {
    final todomodel = TodoModel(
      title: titleController.text,
      description: descriptionController.text,
    );
    await service.updatetodo(index, todomodel);
    titleController.clear();
    descriptionController.clear();
    setState(() {
      list();
    });
  }

  void updatefunction(int index) {
      titleController.text = mode[index].title;
      descriptionController.text = mode[index].description;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Update Todo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: "Title"),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: "Description"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () async{
                updatee(index);
                Navigator.pop(context);
              },
              child: Text("update"),
            ),
          ],
        );
      },
    );
  }

  //save
  void save() async {
    final todoModel = TodoModel(
      title: titleController.text,
      description: descriptionController.text,
    );
    await service.savetodo(todoModel);
    titleController.clear();
    descriptionController.clear();
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
          title: Text("enter details"),
          content: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: "Title"),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: "Description"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                save();
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
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mode[index].title),
            subtitle: Text(mode[index].description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              //chechbuttun
              Checkbox(value: mode[index].isCompleted, onChanged:(value) {
               final todo =TodoModel(title: mode[index].title, description: mode[index].description,
                isCompleted: value??false,
                );
                service.updatetodo(index, todo);
                setState(() {
                  list();
                });
              },),
  

                IconButton(
                  onPressed: () {
                    deleteee(index);
                  },
                  icon: Icon(Icons.delete),
                ),
                SizedBox(height: 10),
                IconButton(
                  onPressed: () {
                    updatefunction(index);
                  },
                  icon:  Icon(Icons.update),
                ),
              ],
            ),
          );
        },
        itemCount: mode.length,
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
