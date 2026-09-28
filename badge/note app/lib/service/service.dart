import 'package:hive_flutter/hive_flutter.dart';
import 'package:monday/model/mode.dart';

class Noteservice{
  Box<Notemodel>notebox = Hive.box<Notemodel>('open');
  //save
  Future<void>savednote(Notemodel model){
    return notebox.add(model);
  }
  //
  List<Notemodel>listnote(){
    return notebox.values.toList();
  }

}