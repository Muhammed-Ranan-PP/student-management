import 'package:flutter/material.dart';
import 'models/student_model.dart';

class EditStudentPage extends StatefulWidget {
  const EditStudentPage({super.key,
    required this.student  
  });
    final Student student;
  @override
  State<EditStudentPage> createState() => _EditStudentPageState();
}

class _EditStudentPageState extends State<EditStudentPage> {
   final nameController = TextEditingController();
   final ageController = TextEditingController();
   final classController = TextEditingController();
   final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}