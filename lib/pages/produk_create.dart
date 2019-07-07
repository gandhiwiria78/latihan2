import 'package:flutter/material.dart';

class ProdukCreatePage extends StatefulWidget {
  final Function _addProduk;
  ProdukCreatePage(this._addProduk);
  @override
  State<StatefulWidget> createState() => _ProdukCreatePageState();

}

class _ProdukCreatePageState extends State<ProdukCreatePage>{
  
  String _namaProduk;
  String _deskripsiProduk;
  double _hargaProduk;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Nama Produk"),
            onChanged: (String value){
            setState(() {
              _namaProduk = value;
            });
          },),
          TextField(
            decoration: InputDecoration(labelText: "Deskripsi Produk"),
            maxLines: 4,
            onChanged: (String value){
            setState(() {
              _deskripsiProduk = value;
            });
          },),
          TextField(
            decoration: InputDecoration(labelText: "Harga Produk"),
            keyboardType: TextInputType.number,
            onChanged: (String value){
            setState(() {
              _hargaProduk = double.parse(value);
            });
          },),
          SizedBox(height: 19,),
          RaisedButton(
            child: Text('Simpan'),
            color: Theme.of(context).accentColor,
            onPressed: (){
               final Map<String,dynamic> produks = {
                 "judul": _namaProduk,
                 "deskripsi": _deskripsiProduk,
                 "harga":_hargaProduk,
                 "image": "assets/food.jpg"
               };
               widget._addProduk( produks);
               Navigator.pushReplacementNamed(context, '/ProduksPage');
            },

          )
      ],)
    );
  }
}