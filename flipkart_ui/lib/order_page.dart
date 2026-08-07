import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Orders"),
      centerTitle: true,
     ), 

     body: ListView(
      children: [
        Card(
          child: ListTile(
            leading: Icon(
              Icons.check_circle,
            ),
            title: Text("iphone 15"),
            subtitle: Text("Deliverd"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),

        Card(
          child: ListTile(
            leading: Icon(
              Icons.check_circle,
            ),
            title: Text("iphone 15"),
            subtitle: Text("Deliverd"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),


      ],
     ),
    );
  }
}