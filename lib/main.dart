import 'package:flutter/material.dart';


import 'package:quote_app_daily_task/utils/bg.dart';
import 'package:quote_app_daily_task/Toggle%20View/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {

        '/':(context)=>gridviewScreen(),
        '/bg':(context)=>bgScreen(),
      },
    );
  }
}

