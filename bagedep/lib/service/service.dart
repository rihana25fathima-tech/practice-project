import 'package:bagedep/model/model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Todoservice{
Box<Todomodel>oobox = Hive.box<Todomodel>('open');

Future<void>settodo(Todomodel model){
  return oobox.add(model);
}

List<Todomodel>listtodo(){
   return oobox.values.toList();
}

void deletetodo(int index){
  oobox.deleteAt(index);
}

void updatetodo(int index,Todomodel model){
  oobox.putAt(index, model);
}
}