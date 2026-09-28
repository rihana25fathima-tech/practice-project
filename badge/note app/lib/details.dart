import 'package:flutter/material.dart';
import 'package:monday/model/mode.dart';
import 'package:monday/service/service.dart';


class Details extends StatefulWidget {
  const new({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
 final service = Noteservice();
   List<Notemodel>mode =[];
//list
void list(){
  setState(() {
    mode= service.listnote();
  });
}
@override
void initState(){
  super.initState();
  list();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(itemCount: mode.length,
      itemBuilder: (context, index) {
      return ListTile(
 title: Text(mode[index].title),
 subtitle: Text(mode[index].description),
 leading: Text(mode[index].id),
      );
    },),
    );
  }
}