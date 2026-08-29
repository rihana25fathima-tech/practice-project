import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _StudentPageState();
}

class _StudentPageState extends State<AddStudent> {
  final TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController courseController = TextEditingController();

  // @override
  // void dispose() {
  //   nameController.dispose();
  //   ageController.dispose();
  //   courseController.dispose();
  //   numberController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Student"), centerTitle: true),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30),

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Student Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            //next
            SizedBox(height: 20),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "Age",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calendar_today),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: courseController,
              decoration: InputDecoration(
                hintText: "Course",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.school),
              ),
            ),

            SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(ageController.text);
                  print(courseController.text);
                },
                child: Text("Save Student", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
