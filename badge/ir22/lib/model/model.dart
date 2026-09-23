
import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';
@HiveType(typeId: 0)
class Usermodel{
  @HiveField(0)
  String name;
  @HiveField(1)
  String age;
  @HiveField(2)
  String email;

Usermodel({
  required this.name,
  required this.age,
  required this.email,
});
}