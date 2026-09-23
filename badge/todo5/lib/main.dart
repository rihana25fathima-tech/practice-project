import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo5/home.dart';
import 'package:todo5/model/model.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ModelAdapter());
  await Hive.openBox<TodoModel>('open');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Homepage());
  }
}
