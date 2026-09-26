import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:saturday/home.dart';
import 'package:saturday/model/model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(BloodModelAdapter());
  await Hive.openBox<BloodModel>("open");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', 
    home: Homepage());
  }
}
