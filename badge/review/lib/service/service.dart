import 'package:hive_flutter/hive_flutter.dart';
import 'package:review/model/model.dart';

class UserService{
 final Box<User>box = Hive.box<User>('open');

 //add
 Future<void> saveUser(User user)async{
await box.add(user);
 }

 // get
 User? getUser(){
  if(box.isEmpty){
    return null;
  }
  return box.getAt(0);
 }
 List<User> getAllUsers() {
  return box.values.toList();
}

}