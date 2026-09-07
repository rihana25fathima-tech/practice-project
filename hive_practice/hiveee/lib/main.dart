import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveee/hom.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox('opnbox');
  await Hive.initFlutter();
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Homepage(),
    );
  }
}