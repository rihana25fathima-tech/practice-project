import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_management/models/student_model.dart';
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
    final studentBox = Hive.box<StudentModel>("studentBox");
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
                final students = <StudentModel>[];
                final originalIndexes = <int>[];

                for (int i = 0; i < box.length; i++) {
                  final student = box.getAt(i);
                  if (student != null) {
                    final name = student.name.toLowerCase();

                    if (name.contains(searchText)) {
                      students.add(student);
                      originalIndexes.add(i);
                    }
                  }
                }
                //empty check
                if (box.isEmpty) {
                  return Center(
                    child: Text(
                      "No Students Added",
                      style: const TextStyle(fontSize: 18),
                    ),
                  );
                }

                //result illangil
                if (students.isEmpty) {
                  return const Center(
                    child: Text(
                      "No Students Found",
                      style: TextStyle(fontSize: 18),
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
                              builder: (context) => StudentDetail(
                                student: student,
                                index: originalIndexes[index],
                              ),
                            ),
                          );
                        },
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text(
                          student.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        subtitle: Text(
                          "Age: ${student.age}\n"
                          "Course: ${student.course}",
                        ),

                        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          StreamBuilder(
  stream: studentBox.watch(),
  builder: (context, snapshot) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Text(
        "Total Students: ${studentBox.length}",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  },
),
        ],
      ),
    );
  }
}
