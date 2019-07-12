import 'package:flutter/material.dart';
import 'dart:async';
import '../widget/produks/produkdt_cart.dart';

class ProdukDetail extends StatelessWidget {
  final Map<String, dynamic> produk;
  ProdukDetail(this.produk);
  
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:()
    {
      Navigator.pop(context,false);
      return Future.value(false);
    },
    child: Scaffold(
        appBar: AppBar(
          title: Text(produk['judul']),
        ),
        body: Column(
          children: <Widget>[
            ProductCardDt(produk, context),

          ]
        )
    ) );
  }
}
