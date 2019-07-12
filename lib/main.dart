import 'package:flutter/material.dart';
import './home.dart';
import './Login/Login1.dart';

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

void main() => {runApp(MyApp())};

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal,
        
      ),
      home:Login1()
    );
  }
}