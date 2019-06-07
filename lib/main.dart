import 'package:flutter/material.dart';
import './produks_manager.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Awal"),
        ),
        body: ProdukManager()
      ),
    );
  }
}
