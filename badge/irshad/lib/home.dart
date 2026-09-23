import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:irshad/model/model.dart';
import 'package:irshad/service/service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final service = UserService();
  List<UserModel> mode = [];

  void usersList() {
    mode = service.getAllUsers();
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  //saved
  void saved() async {
    UserModel mode = UserModel(name: nameController.text, age: ageController.text);
    await service.savedmodel(mode);
    nameController.clear();
    ageController.clear();
    usersList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    usersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
              hintText: "age",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              saved();
              log("${mode.length}");
            },
            child: Text("save"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mode.length,
              itemBuilder: (context, index) {
                
                final user = mode[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.age),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

