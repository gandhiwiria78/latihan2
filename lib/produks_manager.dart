import 'package:flutter/material.dart';
import './produks.dart';
import './produks_controls.dart';

class ProdukManager extends StatefulWidget {
  final String produkAwal;

  // membuat Optional nilai awal di passing data dart
  ProdukManager({this.produkAwal}) {
    print("ProdukManager konstruksi");
  }
  @override
  State<StatefulWidget> createState() {
    print("ProdukManager createState");
    return _ProdukManagerState();
  }
}

class _ProdukManagerState extends State<ProdukManager> {
  List<String> _produks = [];
  @override
  void initState() {
    print("ProdukManager initState");
    if(_produks.length>0){
       _produks.add(widget.produkAwal);
    }
   
    super.initState();
  }

  @override
  void didUpdateWidget(ProdukManager oldWidget) {
    print("ProdukManager didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduk(String value) {
    setState(() {
      _produks.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ProdukManager build");
    return Column(children: [
      Container(margin: EdgeInsets.all(10), child: ProdukControl(_addProduk)),
      Expanded(child:Produks(_produks))
    ]);
  }
}
