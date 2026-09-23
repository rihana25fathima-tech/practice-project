import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject{
@HiveField(0)
  String name;
@HiveField(1)
  String age;

  UserModel({
    required this.name,
    required this.age,
  });


}