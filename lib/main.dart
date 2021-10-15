import 'package:flutter/material.dart';
import 'package:software/Welcome/start.dart';
import 'package:software/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
