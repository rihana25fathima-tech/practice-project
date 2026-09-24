import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';
@HiveType(typeId: 0)
class TodoModel {
  @HiveField(0)
  String title;
@HiveField(1)
  String description;
@HiveField(2)
  bool isCompleted;

  TodoModel({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}