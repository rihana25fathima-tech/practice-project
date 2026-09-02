import 'package:flutter/material.dart';
import 'package:practice3/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('openBox');
  runApp(Hivepra());
}
class Hivepra extends StatelessWidget {
  const Hivepra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hiveractice",
      home: Homepage(),
    );
  }
}