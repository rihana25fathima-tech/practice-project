import 'package:flutter/material.dart';
import 'package:todo00/model/model.dart';
import 'package:todo00/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service = Todoservice();

  List<Todomodel> mode = [];

  TextEditingController titilecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  //save
  void saveddata()async {
    final todomodel = Todomodel(
      title: titilecontroller.text,
      description: descriptioncontroller.text,
    );
  await  service.savedtodo(todomodel);
    titilecontroller.clear();
    descriptioncontroller.clear();
    setState(() {
      getlist();
    });
  }

  //grt
  void getlist() {
   mode = service.listt();

  }

  //show
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter you details"),
          content: Column(
            children: [
              TextField(
                controller: titilecontroller,
                decoration: InputDecoration(hintText: "Enter title"),
              ),
              SizedBox(height: 10),
              TextField(
                controller: descriptioncontroller,
                decoration: InputDecoration(hintText: "Enter description"),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                saveddata();
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
  void initState(){
    super.initState();
    getlist();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mode[index].title),
            subtitle: Text(mode[index].description),
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
