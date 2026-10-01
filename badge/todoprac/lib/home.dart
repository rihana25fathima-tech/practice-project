import 'package:flutter/material.dart';
import 'package:todoprac/model/model.dart';
import 'package:todoprac/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptiocontroller = TextEditingController();
  final service = Todoservice();
  List<Todomodel> mode = [];

  //delete
  void delete(int index) {
    service.tododelete(index);
    setState(() {
      listtodo();
    });
  }

  //show
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 222, 166, 162),
          title: Text(
            "Enter Detaild",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Column(
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  hintText: "Enter title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptiocontroller,
                decoration: InputDecoration(
                  hintText: "Enter description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  savetodo();
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

  //save
  void savetodo() async {
    final todomodel = Todomodel(
      title: titlecontroller.text,
      description: descriptiocontroller.text,
    );
    await service.todosave(todomodel);
    titlecontroller.clear();
    descriptiocontroller.clear();
    setState(() {
      listtodo();
    });
  }

  //list
  void listtodo() {
    mode = service.todolist();
  }

  //update
  void update(int index) async {
    final todomodel = Todomodel(
      title: titlecontroller.text,
      description: descriptiocontroller.text,
    );
    await service.todoupdate(index, todomodel);
    titlecontroller.clear();
    descriptiocontroller.clear();
    setState(() {
      listtodo();
    });
  }

  //update func
  void updatefunc(int index) {
    titlecontroller.text = mode[index].title;
    descriptiocontroller.text = mode[index].description;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 222, 166, 162),
          title: Text(
            "update Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Column(
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  hintText: "Enter title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptiocontroller,
                decoration: InputDecoration(
                  hintText: "Enter description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  update(index);
                  Navigator.pop(context);
                },
                child: Text("Update"),
              ),
            ],
          ),
        );
      },
    );
  }
 //oscompl
 void iscompleted(int index, bool value){
  mode[index].iscompleted = value;
  service.todoupdate(index, mode[index]);
  setState(() {
    
  });
 }
  @override
  void initState() {
    super.initState();
    listtodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("TODO", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: mode.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(value: mode[index].iscompleted, onChanged: (value) {
              iscompleted(index, value!);
            },),
            title: Text(mode[index].title,
            style: TextStyle(
              decoration: mode[index].iscompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none
              ),),

            subtitle: Text(mode[index].description),

          
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
                    updatefunc(index);
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
