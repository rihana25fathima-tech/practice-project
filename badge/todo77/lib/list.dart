import 'package:flutter/material.dart';
import 'package:todo77/model/model.dart';
import 'package:todo77/service/service.dart';

class Listpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Listpage> createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  final service = Servicetodo();
  List<Todomodel> mode = [];

  //list
  void listt() {
    mode = service.gettodo();
    setState(() {});
  }

  //delete
  void delete(int index) {
    service.deletetodo(index);
    setState(() {
      listt();
    });
  }

  @override
  void initState() {
    super.initState();
    listt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mode[index].titile),
            subtitle: Text(mode[index].description),
            trailing: IconButton(onPressed: () {
              delete(index);
            }, icon: Icon(Icons.delete),),
          );
        },
        itemCount: mode.length,
      ),
    );
  }
}
