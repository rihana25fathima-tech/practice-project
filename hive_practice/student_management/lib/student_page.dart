import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  final TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: 
      Padding(padding:EdgeInsets.all(20),
           child:   Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Student Name",
                border: OutlineInputBorder(),
              ),
            ),

            //next
            SizedBox(height: 20),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: "Age",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: courseController,
              decoration: InputDecoration(
                hintText: "Course",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(ageController.text);
                  print(courseController.text);
                  print(numberController.text);
                },
                child: Text("Save Student",style: TextStyle(fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
