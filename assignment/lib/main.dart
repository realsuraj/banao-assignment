import 'package:assignment/bottom_nav.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNav(),
    );
  }
}
