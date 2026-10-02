import 'package:bagedep/model/model.dart';
import 'package:bagedep/service/service.dart';
import 'package:flutter/material.dart';

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

  //list
  void list() {
    mode = service.listtodo();
  }

  // sho
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter details"),
          content: Column(
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  hintText: "enter title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptiocontroller,
                decoration: InputDecoration(
                  hintText: "enter description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                saved();
                Navigator.pop(context);
              },
              child: Text("save"),
            ),
          ],
        );
      },
    );
  }

  //delete
  void delete(int index) {
    service.deletetodo(index);
    setState(() {
      list();
    });
  }

  //update
  void update(int index) {
    final todomodel = Todomodel(
      title: titlecontroller.text,
      description: descriptiocontroller.text,
    );
    service.updatetodo(index, todomodel);
    titlecontroller.clear();
    descriptiocontroller.clear();
    setState(() {
      list();
    });
  }

  //updatefunction
  void updatefunction(int index) {
    titlecontroller.text = mode[index].title;
    descriptiocontroller.text = mode[index].description;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Update details"),
          content: Column(
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  hintText: "enter title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptiocontroller,
                decoration: InputDecoration(
                  hintText: "enter description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
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

  //save
  void saved() async {
    final todomodel = Todomodel(
      title: titlecontroller.text,
      description: descriptiocontroller.text,
    );
    await service.settodo(todomodel);
    titlecontroller.clear();
    descriptiocontroller.clear();
    setState(() {
      list();
    });
  }
//ceckbox
void chechbox(int index){
  mode[index].iscompleted = !mode[index].iscompleted;
  service.updatetodo(index, mode[index]);
  setState(() {
    
  });
}
  @override
  void initState() {
    super.initState();
    list();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo details"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(157, 47, 40, 1),
      ),
      body: ListView.builder(
        itemCount: mode.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(value: mode[index].iscompleted
            , onChanged: (value) {
              chechbox(index);
            },) ,
            title: Text(mode[index].title),
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
                IconButton(onPressed: () {
                  updatefunction(index);
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
