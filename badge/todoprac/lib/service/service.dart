import 'package:hive/hive.dart';
import 'package:todoprac/model/model.dart';

class Todoservice{

 Box<Todomodel>todobox = Hive.box<Todomodel>('open');

 //save
 Future<void>todosave(Todomodel model){
   return todobox.add(model);
 }
 //list
 List<Todomodel>todolist(){
  return todobox.values.toList();
 }
//update
Future<void>todoupdate(int index,Todomodel model){
  return todobox.putAt(index, model);
}
//delet
Future<void>tododelete(int index){
  return todobox.deleteAt(index);
}
}