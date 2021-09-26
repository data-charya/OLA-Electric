import 'package:flutter/material.dart';
import 'package:olaelectric/Theme/theme_data.dart';
import 'package:olaelectric/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLA Electric',
      theme: theme,
      home: const HomePage(),
    );
  }
}
