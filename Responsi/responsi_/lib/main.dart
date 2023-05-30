import 'package:responsi_/api/api_valorant.dart';
import 'package:responsi_/controllers/controller_valorant.dart';
import 'package:responsi_/screens/detail_screen.dart';
import 'package:responsi_/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ApiHttp());
  Get.lazyPut(() => ValorantController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      title: 'Responsi Praktikum Teknologi dan Pemrograman Mobile IF-C',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/detail/agent': (context) => DetailScreen()
      },
    );
  }
}
