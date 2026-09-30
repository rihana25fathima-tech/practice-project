import 'package:bllodup/model/model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Bloodservice{
//box
Box<Bloodmodel>bbox = Hive.box<Bloodmodel>('open');
//save
Future<void>saveblood(Bloodmodel model){
  return bbox.add(model);
}
//list
List<Bloodmodel>listblood(){
  return bbox.values.toList();
}
//delete
void deleteblood(int index){
   bbox.deleteAt(index);
}
//uppdae
void updateblood(int index,Bloodmodel model){
  bbox.putAt(index, model);
}
}