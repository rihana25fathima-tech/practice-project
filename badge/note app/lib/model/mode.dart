
import 'package:hive_flutter/hive_flutter.dart';
part 'mode.g.dart';
@HiveType(typeId: 0)
class Notemodel{
  @HiveField(0)
   String id;
@HiveField(1)
  String title;
@HiveField(2)
  String  description;


Notemodel({
  required this.id,
  required this.title,
  required this.description,
  
});
}