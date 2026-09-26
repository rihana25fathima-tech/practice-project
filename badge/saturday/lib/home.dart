import 'package:flutter/material.dart';
import 'package:saturday/model/model.dart';
import 'package:saturday/service/service.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service = Bloodservice();
  List<BloodModel>mode = [];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController groupcontroller = TextEditingController();

  //save
  void saved() async {
    final bloodModel = BloodModel(
      name: namecontroller.text,
      age: agecontroller.text,
      bloodgroup: groupcontroller.text,
    );
    await service.saveblood(bloodModel);
    namecontroller.clear();
    agecontroller.clear();
    groupcontroller.clear();
    setState(() {
      list();
    });
  }
  //list
  void list(){
   mode = service.getblood();
  }
  //delete
  void delete(int index)async{
  await service.deletblood(index);
  setState(() {
    list();
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Blood Donation"), centerTitle: true),
      body: Column(
        children: [
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              hintText: "enetr name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: agecontroller,
            decoration: InputDecoration(
              hintText: "enetr age",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: groupcontroller,
            decoration: InputDecoration(
              hintText: "enetr Blood group",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {
            saved();
          }, child: Text("save")),
      
          Expanded(child:
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(title:Text(mode[index].name) ,
                subtitle: Text(" ${mode[index].age}\n ${ mode[index].bloodgroup}"),
                trailing: IconButton(onPressed: () {
                  delete(index);
                }, icon: Icon(Icons.delete)),
                );
              },itemCount: mode.length,)
        
          )
        ]
      )
    );
  }
  }

