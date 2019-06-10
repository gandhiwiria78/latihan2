import 'package:flutter/material.dart';

class ProdukControl extends StatelessWidget {
  
  // final adalah memberitahu bahwa variable 
  // tersebut tidak bisa diset ulang hanya bisa ditambah

  
  final Function addProduk;
  ProdukControl(this.addProduk);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,

      onPressed: () {
        addProduk({'title':'Makanan Manis','imagePath':'assets/food.jpg'});
      },
      child: Text("Tambah Gambar",style: TextStyle(color: Colors.white)),
    );
  }
}
