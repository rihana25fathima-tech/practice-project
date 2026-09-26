import 'package:hive_flutter/hive_flutter.dart';
import 'package:saturday/model/model.dart';

class Bloodservice{

  Box<BloodModel>box = Hive.box<BloodModel>('open');
  //save
 Future<void>saveblood(BloodModel model){
  return box.add(model);
 }
 //get
List<BloodModel>getblood(){
  return box.values.toList();
}
//delete
Future<void>deletblood(int index){
  return box.deleteAt(index);
}
}