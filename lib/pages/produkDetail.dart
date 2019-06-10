import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String title, imagePath;
  ProdukDetail(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Text("Kembali"),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ));
  }
}
