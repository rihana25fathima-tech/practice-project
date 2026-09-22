import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{
@HiveField(1)
  String name;
@HiveField(2)
  String age;
@HiveField(3)
  String email;

  User({
  required this.name,
  required this.age,
  required this.email,
  });

}