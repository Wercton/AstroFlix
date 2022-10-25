import 'package:flutter/material.dart';
import 'package:westerosflix/screens/form_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroFlix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
