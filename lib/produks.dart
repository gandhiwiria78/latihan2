import 'package:flutter/material.dart';

class Produks extends StatelessWidget {
  final List<Map<String,dynamic>> produks;
  final Function _deleteProduk;
  
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali
  Produks(this.produks,this._deleteProduk);

  Widget _itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(produks[index]['image']),
          Text(produks[index]['judul']),
          ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton(
              child: Text('Detail Food'),
              textColor: ThemeData().accentColor,
              padding: const EdgeInsets.all(0.0),
              onPressed: () => Navigator
              .pushNamed<bool>(context,'/produks/'+index.toString())
              .then((bool value){
                if (value){
                  _deleteProduk(index);
                }
              })
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
