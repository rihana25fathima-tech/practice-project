import 'package:blooddd/model/model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Bloodservice{
  //
  Box<Bllodmodel>bbox = Hive.box<Bllodmodel>('open');
  //save
   Future<void>saveblood(Bllodmodel model){
    return bbox.add(model);
   }
  //list
  List<Bllodmodel>listblood(){
    return bbox.values.toList();
  }
  //delete
  void deleteblood(int index){
    bbox.deleteAt(index);
  }
  //updaet
  void updateblood(int index , Bllodmodel model){
    bbox.putAt(index, model);
  }
}