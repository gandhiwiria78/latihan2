import 'package:flutter/material.dart';
import 'dart:async';

class ProdukDetail extends StatelessWidget {
  final String title, imagePath;
  ProdukDetail(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:()
    {
      print('backto Main Menu');
      Navigator.pop(context,false);
      return Future.value(false);
    },child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imagePath),
            Container(
                padding: EdgeInsets.all(10), child: Text("Detail "+ title)),
            Container(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("DELETE"),
                  onPressed: () => Navigator.pop(context, true),
                ))
          ],
        )));
  }
}
