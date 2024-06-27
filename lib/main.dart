import 'package:challange_project_1/Screen/homeScreen.dart';
import 'package:challange_project_1/Screen/loginScreen.dart';
import 'package:challange_project_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:challange_project_1/Screen/HomePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}


