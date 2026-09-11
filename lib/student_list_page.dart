import 'package:flutter/material.dart';
import 'package:student_management_app/add_student_page.dart';
import 'package:hive/hive.dart';
import 'package:student_management_app/student_detail_page.dart';
import 'models/student_model.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var box = Hive.box<Student>("students");
    var students = box.values.toList();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          "STUDENT LIST",
        ),
      ),
      body: Column(
        children: [
          if (students.isEmpty) Center(child: Text("NO Students Found")),
          if (students.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  var student = students[index];

                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              StudentDetailPage(student: student),
                        ),
                      );
                    },
                    title: Text(student.name),
                  );
                },
              ),
            ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddStudentPage()),
              );
            },
            child: Text("ADD STUDENT"),
          ),
        ],
      ),
    );
  }
}
