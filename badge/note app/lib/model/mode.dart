
import 'package:hive_flutter/hive_flutter.dart';
part 'mode.g.dart';
@HiveType(typeId: 0)
class Notemodel{
  @HiveField(1)
   String id;
@HiveField(2)
  String title;
@HiveField(3)
  String  description;


Notemodel({
  required this.id,
  required this.title,
  required this.description,
  
});
}