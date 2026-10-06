import 'package:app/loginpage.dart';
import 'package:app/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(HomemodelAdapter());
  await Hive.openBox<Homemodel>('open');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     home: Loginpage(),
    );
  }
}
