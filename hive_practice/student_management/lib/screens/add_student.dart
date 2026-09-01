import 'package:flutter/material.dart';
import 'package:student_management/models/student_model.dart';
import 'package:student_management/screens/student_record.dart';
import 'package:student_management/services/student_service.dart';

class AddStudent extends StatefulWidget {
  final StudentModel? student;
  final int? index;

  const AddStudent({super.key, this.student, this.index});

  @override
  State<AddStudent> createState() => _StudentPageState();
}

class _StudentPageState extends State<AddStudent> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Edit mode ആണെങ്കിൽ പഴയ data കാണിക്കും
    if (widget.student != null) {
      nameController.text = widget.student!.name;
      ageController.text = widget.student!.age;
      courseController.text = widget.student!.course;
    }
  }

  Future<void> saveStudent() async {
    final name = nameController.text.trim();
    final age = ageController.text.trim();
    final course = courseController.text.trim();
    // validation
    if (name.isEmpty || age.isEmpty || course.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }
    //student data
    final student = StudentModel(name: name, age: age, course: course);
    //singleton service
    final service = StudentService.instance;
    //update
    if (widget.index != null) {
      await service.updateStudent(widget.index!, student);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Student updated successfully")
          ),
        );
       Navigator.pop(context);

       Navigator.pop(context);
    }
    } else {
      await service.addStudent(student);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Student added successfully")),
        );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StudentRecord()));
      }
    }
    if (mounted) {}
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    courseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add student"), centerTitle: true),

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
                onPressed: saveStudent,
                child: Text("save student", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
