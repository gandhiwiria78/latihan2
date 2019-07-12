import 'package:flutter/material.dart';

class HargaTag extends StatelessWidget {
  
  final String harga;
  HargaTag(this.harga);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2.5),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        '\S$harga',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}