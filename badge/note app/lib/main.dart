import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:monday/homme.dart';
import 'package:monday/model/mode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>('open');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: Homepage(),debugShowCheckedModeBanner: false,);
  }
}
