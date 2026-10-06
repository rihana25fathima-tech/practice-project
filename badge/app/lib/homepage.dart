import 'package:app/model/model.dart';
import 'package:app/service/service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController placecontroller = TextEditingController();
  final service = Homeservice();
  List<Homemodel> mode = [];
  //list
  void list() {
    mode = service.listmodel();
  }

  //save
  void save() async {
    final homemodel = Homemodel(
      name: namecontroller.text,
      age: agecontroller.text,
      place: placecontroller.text,
    );
    await service.savemodel(homemodel);
    namecontroller.clear();
    agecontroller.clear();
    placecontroller.clear();
    setState(() {
      list();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAILS PAGE"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: agecontroller,
              decoration: InputDecoration(
                hintText: "Enter Age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: placecontroller,
              decoration: InputDecoration(
                hintText: "Enter Place",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                save();
              },
              child: Text("Save"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(mode[index].name),
                    subtitle: Text("${mode[index].age} ${mode[index].place}"),
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
