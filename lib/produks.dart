import 'package:flutter/material.dart';

import './pages/produkDetail.dart';

class Produks extends StatelessWidget {
  final List<Map> produks;
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali
  Produks([this.produks = const []]) {
    print("Produk Konstruksi");
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(produks[index]['imagePath']),
          Text(produks[index]['title']),
          ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton(
              child: Text('Detail Food'),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProdukDetail(produks[index]['title'],produks[index]['imagePath']),
                    ),
              )
            )
          ])
        ],
      ),
    );
  }

  // menggunakan Listview Builder adalah membuat list sesuai dengan kebutuhan, function ini me
  @override
  Widget build(BuildContext context) {
    return produkCard();
  }

  Widget produkCard() {
    if (produks.length > 0) {
      return ListView.builder(
        itemBuilder: _itemBuilder,
        itemCount: produks.length,
      );
    } else {
      return Container(
        alignment: Alignment.center,
        child: Text('Kosong, Tambahkan Sesuatu Deh'),
      );
    }
  }
}
