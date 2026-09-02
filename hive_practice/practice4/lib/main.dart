import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:practice4/home.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("Box");
  
  runApp(Hivepractice());
}
class Hivepractice extends StatelessWidget {
  const Hivepractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ee",
      home: Homepage(),
    );
  }
}