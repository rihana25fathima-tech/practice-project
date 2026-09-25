import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class Todomodel{
@HiveField(1)
  String title;
  
  @HiveField(2)
  String description;

Todomodel({
  required this.title,
  required this.description,
});
}