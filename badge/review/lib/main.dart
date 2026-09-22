import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:review/home.dart';
import 'package:review/model/model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(UserAdapter());

  await Hive.openBox<User>('open');

 
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
