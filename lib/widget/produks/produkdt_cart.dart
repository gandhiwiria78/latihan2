import 'package:flutter/material.dart';

import './harga_tag.dart';
import './address_tag.dart';
import './ui_elements/title_default.dart';

class ProductCardDt extends StatelessWidget {
  final Map<String, dynamic> produk;
  
  final BuildContext contextAd;

  ProductCardDt(this.produk,this.contextAd);
  void _showAlertDialogHapus(BuildContext context){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Hapus Item"),
          content: Text("Hapus data ini ? "),
          actions: <Widget>[
             RaisedButton(
               color: Colors.white,
              child: Text("Ya, Hapus"),
              onPressed: (){
                Navigator.pop(context);
                Navigator.pop(context,true);
              
              },
            ),
            RaisedButton(
              color: Colors.white,
              child: Text("Tidak"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            
        ],);
      });
  }

  Widget _buildTitlePriceRow() {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(produk['judul']),
          SizedBox(
            width: 8.0,
          ),
          HargaTag(produk['harga'].toString())
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        
        IconButton(
          icon: Icon(Icons.delete),
          color: Colors.red,
          onPressed: () => _showAlertDialogHapus(contextAd),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(produk['image']),
          _buildTitlePriceRow(),
          AddressTag(produk['deskripsi']),
          _buildActionButtons(context)
        ],
      ),
    );
    
  }
}
