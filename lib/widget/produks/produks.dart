import 'package:flutter/material.dart';
import './product_card.dart';

class Produks extends StatelessWidget {
  final List<Map<String,dynamic>> produks;
  final Function _deleteProduk;
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali
  Produks(this.produks,this._deleteProduk);
  // menggunakan Listview Builder adalah membuat list sesuai dengan kebutuhan, function ini me
  @override
  Widget build(BuildContext context) {
    return produkCard();
  }

  Widget produkCard() {
    Widget productCards;
    if (produks.length > 0) {
      return productCards = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(produks[index], index, _deleteProduk),
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
