import 'package:flutter/material.dart';

class Produks extends StatefulWidget {
  @override
  _ProduksState createState() => _ProduksState();

}

class _ProduksState extends State<Produks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Produks'),),
        body: Center(child: Column(children: <Widget>[
          Text("Test "),
          
        ],),)

    );
  }
}