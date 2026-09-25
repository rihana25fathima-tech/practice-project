import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo00/model/model.dart';

class Todoservice {
  Box<Todomodel> box = Hive.box<Todomodel>('open');

  //set
  Future<void> savedtodo(Todomodel model) {
    return box.add(model);
  }

  //list
  List<Todomodel> listt() {
    return box.values.toList();
  }
}
