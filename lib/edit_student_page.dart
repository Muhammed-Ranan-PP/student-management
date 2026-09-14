import 'package:flutter/material.dart';
import 'models/student_model.dart';

class EditStudentPage extends StatefulWidget {
  const EditStudentPage({super.key, required this.student});
  final Student student;
  @override
  State<EditStudentPage> createState() => _EditStudentPageState();
}

class _EditStudentPageState extends State<EditStudentPage> {
  @override
  void initState() {
    super.initState();
     nameController.text=widget.student.name;
     ageController.text=widget.student.age.toString();
     classController.text=widget.student.studentClass;
     addressController.text=widget.student.address;
    
  }
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final classController = TextEditingController();
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
         iconTheme: IconThemeData(
          color:Colors.white
        ),
        centerTitle: true,
        title: Text(
          "EDIT STUDENT",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
            ),
             TextField(
              controller: ageController,
            ),
             TextField(
              controller: classController,
            ),
             TextField(
              controller: addressController,
            ),
            SizedBox(
                  height: 10.0,
                ),
            ElevatedButton(onPressed: (){
              widget.student.name =  nameController.text ;
               widget.student.age =  int.parse(ageController.text);
                widget.student.studentClass =  classController.text ;
                 widget.student.address =  addressController.text ;
                 widget.student.save();
                 Navigator.pop(context);
            }, 
            child: Text("UPDATE STUDENT"))
          ],
        ),
      ),
    );
  }
}
