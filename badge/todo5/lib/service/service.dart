import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo5/model/model.dart';

class TodoService {
  final Box<TodoModel> obox = Hive.box<TodoModel>('open');
  //save
  Future<void> savetodo(TodoModel mm) {
    return obox.add(mm);
  }
  //get
   List<TodoModel>gettodo(){
    return obox.values.toList();
   }
}
