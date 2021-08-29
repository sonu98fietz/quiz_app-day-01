import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_01/screens/Welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData.dark(),
      home: const WelcomeScreen(),
    );
  }
}
