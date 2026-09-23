import 'package:hive_flutter/hive_flutter.dart';

import '../model/model.dart';


class UserService {
  final Box<UserModel> userBox = Hive.box<UserModel>('open');
  //add
  Future<void> savedmodel(UserModel model) async {
    await userBox.add(model);
  }

  //get
  List<UserModel> getAllUsers() {
    return userBox.values.toList();
  }
}
