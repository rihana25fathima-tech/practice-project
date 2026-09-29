import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';
@HiveType(typeId: 0)
class Todomodel{
@HiveField(0)
String title;
@HiveField(1)
String description;

Todomodel({
  required this.title,
  required this.description,
});
}