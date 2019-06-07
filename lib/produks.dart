import 'package:flutter/material.dart';

class Produks extends StatelessWidget {
  final List<String> produks;
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali
  Produks([this.produks = const []]) {
    print("Produk Konstruksi");
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(produks[index])
        ],
      ),
    );
  }

  // menggunakan Listview Builder adalah membuat list sesuai dengan kebutuhan, function ini me
  @override
  Widget build(BuildContext context) {
    print("Produk Build");
    return produks.length > 0
        ? ListView.builder(
            itemBuilder: _itemBuilder,
            itemCount: produks.length,
          )
        : Container(
            alignment: Alignment.center,
            child: Text('Kosong, Tambahkan Sesuatu'),
          );
  }
}
