import 'package:flutter/material.dart';
import 'package:innova_infosys/feature_two/screen/screentwo.dart';
import 'feature_one/screen/screenone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}


