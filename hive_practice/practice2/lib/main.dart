import 'package:flutter/material.dart';
import 'package:practice2/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("namebox");
  
  runApp(Practice());
}
class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mm",
      home: Homepage(),
    );
  }
}