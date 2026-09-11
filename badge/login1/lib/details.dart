import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final box = Hive.box("open");
    //get
  String getname(int index){
    return box.getAt(index)["name"];
  }
  String getage(int index){
return box.getAt(index)["age"];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Student Details"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
       title: Text(getname(index)),
       subtitle: Text(getage(index)),
        );
      },itemCount: box.length,),
    );
  }
}