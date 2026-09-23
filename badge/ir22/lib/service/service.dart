
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ir22/model/model.dart';

class Serviceuser{
 final Box<Usermodel>ubox = Hive.box<Usermodel>('open');

 //save
Future<void>savedusers(Usermodel model){
  return ubox.add(model);
}

List<Usermodel>getusers(){
  return ubox.values.toList();
}
}