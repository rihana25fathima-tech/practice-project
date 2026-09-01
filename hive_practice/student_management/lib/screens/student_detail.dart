import 'package:flutter/material.dart';
import 'package:student_management/models/student_model.dart';

import 'package:student_management/screens/add_student.dart';
import 'package:student_management/services/student_service.dart';

class StudentDetail extends StatelessWidget {
  final StudentModel student;
  final int index;

  const StudentDetail({super.key, required this.student, required this.index});

  Future<void> deleteStudent(BuildContext context) async {
    await StudentService.instance.deleteStudent(index);

    if (context.mounted) {
      Navigator.pop(context);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Student deleted successfully")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Detail"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const CircleAvatar(radius: 55, child: Icon(Icons.person, size: 60)),

            const SizedBox(height: 25),

            Text(
              student.name,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text("Age"),
                subtitle: Text(student.age),
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text("Course"),
                subtitle: Text(student.course),
              ),
            ),

            const SizedBox(height: 30),

            // EDIT BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AddStudent(student: student, index: index),
                    ),
                  );
                },

                icon: const Icon(Icons.edit),

                label: const Text(
                  "Edit Student",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // DELETE BUTTON
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                onPressed: () {
                  deleteStudent(context);
                },

                icon: const Icon(Icons.delete),

                label: const Text(
                  "Delete Student",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
