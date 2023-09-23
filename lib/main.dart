import 'package:flutter/material.dart';
import 'kuis.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Interaktif',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Kuis(),
    );
  }
}
