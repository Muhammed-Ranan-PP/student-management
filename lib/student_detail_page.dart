import 'package:flutter/material.dart';
import 'models/student_model.dart';
import 'package:student_management_app/edit_student_page.dart';

class StudentDetailPage extends StatelessWidget {
  const StudentDetailPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "STUDENT DETAILS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
       actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditStudentPage(student:student),),);
       }, icon: Icon(Icons.edit))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Name : "),
                Text(student.name),
              ],
            ),
            Row(
              children: [
                  Text("Age : "),
                Text(student.age.toString()),
              ],
            ),
            Row(
              children: [
                  Text("Domain : "),
                Text(student.studentClass),
              ],
            ),
            Row(
              children: [
                  Text("Address : "),
                Text(student.address),
              ],
            )
        
          ],
        ),
      ),
    );
  }
}
