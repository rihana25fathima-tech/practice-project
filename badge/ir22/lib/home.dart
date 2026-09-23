import 'package:flutter/material.dart';
import 'package:ir22/model/model.dart';
import 'package:ir22/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namecontrollr = TextEditingController();
  TextEditingController agecontrollr = TextEditingController();
  TextEditingController emailcontrollr = TextEditingController();

  final service = Serviceuser();
  List<Usermodel> mode = [];
  //save
  void saveddata() async {
    Usermodel mode = Usermodel(
      name: namecontrollr.text,
      age: agecontrollr.text,
      email: emailcontrollr.text,
    );
    await service.savedusers(mode);
    namecontrollr.clear();
    agecontrollr.clear();
    setState(() {
      lists();
    });
  }

  //get
  void lists(){
    mode = service.getusers();
  }
  @override
   void initState(){
    super.initState();
    lists();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Details")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: namecontrollr,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: agecontrollr,
              decoration: InputDecoration(
                hintText: "age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: emailcontrollr,
              decoration: InputDecoration(
                hintText: "email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                saveddata();
              },
              child: Text("save"),
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(mode[index].name),
                subtitle: Text("${mode[index].age} \n ${mode[index].email}"),
                
              );
            },itemCount: mode.length,))
          ],
        ),
      ),
    );
  }
}
