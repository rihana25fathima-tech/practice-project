import 'package:app/model/model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Homeservice{
  Box<Homemodel>bbox = Hive.box<Homemodel>('open');

  Future<void>savemodel(Homemodel model){
    return bbox.add(model);
  }

  List<Homemodel>listmodel(){
    return bbox.values.toList();
  }
}