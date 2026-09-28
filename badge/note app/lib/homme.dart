import 'package:flutter/material.dart';
import 'package:monday/details.dart';
import 'package:monday/model/mode.dart';
import 'package:monday/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController idcontroller = TextEditingController();
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descontroller = TextEditingController();

  final service = Noteservice();
  //save
  void savee() async {
    final notemodel = Notemodel(
      id: idcontroller.text,
      title: titlecontroller.text,
      description: descontroller.text,
    );
   await service.savednote(notemodel);
    idcontroller.clear();
    titlecontroller.clear();
    descontroller.clear();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: idcontroller,
              decoration: InputDecoration(
                hintText: "id",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                hintText: "title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descontroller,
              decoration: InputDecoration(
                hintText: "description",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                savee();
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details(),));
              },
              child: Text("save"),
            ),
          ],
        ),
      ),
    );
  }
}
