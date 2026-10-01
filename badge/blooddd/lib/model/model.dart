import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';
@HiveType(typeId: 0)
class Bllodmodel{
  @HiveField(0)
String name;
@HiveField(1)
String age;
@HiveField(2)
String bloodgroup;
@HiveField(3)
bool iscomplete;

Bllodmodel({
  required this.name,
  required this.age,
  required this.bloodgroup,
  this.iscomplete = false,
});
}