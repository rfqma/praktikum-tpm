import 'package:flutter/material.dart';

import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Praktikum Teknologi dan Pemrograman Mobile IF-C',
      // RIFQI MAULANA (123200128)
      home: Home(),
    );
  }
}
