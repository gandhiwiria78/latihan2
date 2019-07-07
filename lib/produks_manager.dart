import 'package:flutter/material.dart';
import './produks.dart';

class ProdukManager extends StatelessWidget {
 final Function _deleteProduk; 
 final List<Map<String,dynamic>> _produks;


  ProdukManager(this._produks, this._deleteProduk);
 
  @override
  Widget build(BuildContext context) {
    print("ProdukManager build");
    return Column(children: [
      //Container(margin: EdgeInsets.all(10), child: ProdukControl(_addProduk)),
      Expanded(child:Produks(_produks, _deleteProduk))
    ]);
  }
}
