import 'package:flutter/material.dart';
import 'package:fc_calculator/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Focal Length Calculator",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const Home(),
    );
  }
}

