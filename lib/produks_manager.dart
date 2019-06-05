import 'package:flutter/material.dart';
import './produks.dart';

class ProdukManager extends StatefulWidget {
  final String produkAwal;

  ProdukManager(this.produkAwal) {
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
    _produks.add(widget.produkAwal);
    super.initState();
  }

  @override
  void didUpdateWidget(ProdukManager oldWidget) {
    print("ProdukManager didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("ProdukManager build");
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _produks.add("PRodukl");
            });
          },
          child: Text("Tambah Gambar"),
        ),
      ),
      Produks(_produks)
    ]);
  }
}
