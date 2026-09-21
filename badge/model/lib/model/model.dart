import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';
@HiveType(typeId: 0)
class Student extends HiveObject{
@HiveField(0)
  String name;
  
@HiveField(1)
  String place;

  Student({
    required this.name,
    required this.place,
  });
}