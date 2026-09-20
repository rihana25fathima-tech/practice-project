import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final box = Hive.box('open');
  //get
  String getname (int index){
    return box.getAt(index)["name"];
  }
  String geTage(int index){
 return box.getAt(index)["age"];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context, index) {
        return ListTile(
         title: Text(getname(index)),
         subtitle: Text(geTage(index)),
        );
      },itemCount: box.length,), 
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      },child: Icon(Icons.add),),
    );
  }
}