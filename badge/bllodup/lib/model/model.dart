import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';
@HiveType(typeId: 0)
class Bloodmodel{
@HiveField(0)
String name;
@HiveField(1)
String age;
@HiveField(2)
String bllodgroup;
@HiveField(3)
bool iscompleted;
Bloodmodel({
  required this.name,
  required this.age,
  required this.bllodgroup,
  this.iscompleted = false,
});
}