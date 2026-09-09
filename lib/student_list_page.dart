import 'package:flutter/material.dart';
import 'package:student_management_app/add_student_page.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          "STUDENT LIST",
        ),
      ),
      body: Column(
        children: [
          Center(child: Text("NO Students Found")),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddStudentPage()));
          }, child: Text("ADD STUDENT")),
        ],
      ),
    );
  }
}
