import 'package:flutter/material.dart';
import 'dart:async';

class ProdukDetail extends StatelessWidget {
  final String title, imagePath;
  ProdukDetail(this.title, this.imagePath);
  
  void _showAlertDialogHapus(BuildContext context){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Hapus Item"),
          content: Text("Hapus data ini ? "),
          actions: <Widget>[
             RaisedButton(
               color: Colors.white,
              child: Text("Ya, Hapus"),
              onPressed: (){
                Navigator.pop(context);
                Navigator.pop(context,true);
              
              },
            ),
            RaisedButton(
              color: Colors.white,
              child: Text("Tidak"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            
        ],);
      });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:()
    {
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
                  onPressed: () => _showAlertDialogHapus(context),
                ))
          ],
        )));
  }
}
