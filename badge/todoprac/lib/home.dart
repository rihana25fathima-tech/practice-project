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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("TODO", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
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
              },
              child: Text("save"),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: mode.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mode[index].title),
                    subtitle: Text(mode[index].description),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
