import 'package:flutter/material.dart';
import './produks.dart';
import './produks_controls.dart';

class ProdukManager extends StatelessWidget {
  
  List<Map<String,String>> _produks;
  Function _addProduk;
  Function _deleteProduk;

  ProdukManager(this._produks,this._addProduk,this._deleteProduk);
 
  @override
  Widget build(BuildContext context) {
    print("ProdukManager build");
    return Column(children: [
      Container(margin: EdgeInsets.all(10), child: ProdukControl(_addProduk)),
      Expanded(child:Produks(_produks, deleteProduk: _deleteProduk,))
    ]);
  }
}
