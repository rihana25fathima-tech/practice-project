import 'package:flutter/material.dart';
import 'package:hive2/da.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox('openbox');
  await Hive.initFlutter();
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage()
      
    );
  }
}