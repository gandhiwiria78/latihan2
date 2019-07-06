import 'package:flutter/material.dart';



class Produks extends StatelessWidget {
  final List<Map> produks;
  final Function deleteProduk;
  
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali
  Produks(this.produks,{this.deleteProduk}) {
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
              onPressed: () => Navigator
              .pushNamed<bool>(context,'/produks/'+index.toString())
              .then((bool value){
                if (value){
                  deleteProduk(index);
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
