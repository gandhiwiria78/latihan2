import 'package:flutter/material.dart';

import './harga_tag.dart';
import './address_tag.dart';
import './ui_elements/title_default.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> produk;
  final int produkIndex;
  final Function _deleteProduk;

  ProductCard(this.produk, this.produkIndex, this._deleteProduk);

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
          icon: Icon(Icons.info),
          color: Theme.of(context).accentColor,
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/produk/' + produkIndex.toString()).then((value){
                if(value){
                  _deleteProduk(produkIndex);
                  print('benar');
                }else{
                  print('salah');
                }
              }),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/produk/' + produkIndex.toString()),
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
