import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:notaapp/view/splash_screen/splash_screen.dart';

Future<void> main() async {
  // HIVE step 2
  await Hive.initFlutter();
  // HIVE step 3
  var box = await Hive.openBox('noteBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
