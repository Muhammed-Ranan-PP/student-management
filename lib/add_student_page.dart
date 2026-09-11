import 'package:flutter/material.dart';
import 'models/student_model.dart';
import 'package:hive/hive.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final classController = TextEditingController();
  final addressController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    classController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          "ADD STUDENT",
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(child: Icon(Icons.person)),
          TextField(
            decoration: InputDecoration(hintText: "Student Name"),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(hintText: "AGE"),
            controller: ageController,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Student Class"),
            controller: classController,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Address"),
            controller: addressController,
          ),
          ElevatedButton(
            onPressed: () {    
              Student student = Student(
               
                name: nameController.text,
                age: int.parse(ageController.text),
                studentClass: classController.text,
                address: addressController.text,
              );
              var box = Hive.box<Student>("students");
              box.add(student);
              Navigator.pop(context);
            },
            child: Text("SAVE STUDENT"),
          ),
        ],
      ),
    );
  }
}
