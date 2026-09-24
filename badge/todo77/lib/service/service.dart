import 'package:hive/hive.dart';
import 'package:todo77/model/model.dart';

class Servicetodo{
Box<Todomodel> obox = Hive.box<Todomodel>('open');

//saver
Future<void>savedtodo(Todomodel todo){
  return obox.add(todo);
}
//geet
List<Todomodel>gettodo (){
  return obox.values.toList();
}
//delete
Future<void>deletetodo(int index){
  return obox.deleteAt(index);
}
}