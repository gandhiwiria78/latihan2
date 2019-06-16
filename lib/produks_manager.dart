import 'package:flutter/material.dart';
import './produks.dart';
import './produks_controls.dart';

class ProdukManager extends StatefulWidget {
  final Map produkAwal;

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
  List<Map> _produks = [];
  @override
  void initState() {
    print("ProdukManager initState");
    if(widget.produkAwal !=null){
       _produks.add(widget.produkAwal);
    }
   
    super.initState();
  }

  @override
  void didUpdateWidget(ProdukManager oldWidget) {
    print("ProdukManager didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduk(Map value) {
    setState(() {
      _produks.add(value);
    });
  }

void _deleteProduk(int index){
  setState(() {
    _produks.removeAt(index);
  });
}
  @override
  Widget build(BuildContext context) {
    print("ProdukManager build");
    return Column(children: [
      Container(margin: EdgeInsets.all(10), child: ProdukControl(_addProduk)),
      Expanded(child:Produks(_produks, deleteProduk: _deleteProduk,))
    ]);
  }
}
