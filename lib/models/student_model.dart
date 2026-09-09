import 'package:hive/hive.dart';
part 'student_model.g.dart';

@HiveType(typeId: 0 )
class Student extends HiveObject {
  @HiveField(0)
  String profileImage;
  @HiveField(1)
  String name;
  @HiveField(2)
  int age;
  @HiveField(3)
  String studentClass;
  @HiveField(4)
  String address;

  Student({
  required this.profileImage,
  required this.name,
  required this.age,
  required this.studentClass,
  required this.address
});
}
