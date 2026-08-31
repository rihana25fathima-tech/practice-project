import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management/screens/add_student.dart';
import 'package:student_management/screens/student_detail.dart';

class StudentRecord extends StatefulWidget {
  const StudentRecord({super.key});

  @override
  State<StudentRecord> createState() => _StudentRecordState();
}

class _StudentRecordState extends State<StudentRecord> {
  final TextEditingController searchController = TextEditingController();

  String searchText = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final studentBox = Hive.box("studentBox");
    return Scaffold(
      appBar: AppBar(title: const Text("Student Records"), centerTitle: true),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddStudent()),
          );
        },
        child: const Icon(Icons.person_add),
      ),

      body: Column(
        children: [
          //search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,

              onChanged: (value) {
                setState(() {
                  searchText = value.toLowerCase();
                });
              },

              decoration: InputDecoration(
                hintText: "Search student by name",
                prefixIcon: const Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          Expanded(
            child: ValueListenableBuilder(
              valueListenable: studentBox.listenable(),
              builder: (context, box, child) {
                //FILTER
                final students = <Map<String, dynamic>>[];

                for (int i = 0; i < box.length; i++) {
                  final student = Map<String, dynamic>.from(box.getAt(i));

                  final name = student['name'].toString().toLowerCase();

                  if (name.contains(searchText)) {
                    students.add({...student, 'originalIndex': i});
                  }
                }
                //empty check
                if (box.isEmpty) {
                  return Center(
                    child: Text(
                      searchText.isEmpty
                          ? "No Students Added"
                          : "No Students Added",
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }

                return ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];

                    return Card(
                      elevation: 3,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  StudentDetail(student: student, index: index),
                            ),
                          );
                        },
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text(
                          student['name'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        subtitle: Text(
                          "Age: ${student['age']}\n"
                          "Course: ${student['course']}",
                        ),

                        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
