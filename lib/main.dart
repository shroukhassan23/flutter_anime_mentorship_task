import 'package:anime_flutter_project/presentation/first_screen.dart';
import 'package:anime_flutter_project/presentation/second_screen.dart';
import 'package:anime_flutter_project/presentation/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SecondScreen());
  }
}
