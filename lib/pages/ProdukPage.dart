import 'package:flutter/material.dart';
import '../produks_manager.dart';


class ProdukPage extends StatelessWidget {

  final List<Map<String,String>> _produks;
  final Function _addProduk;
  final Function _deleteProduk;

  ProdukPage(this._produks,this._addProduk,this._deleteProduk);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          drawer: Drawer(child: Column(children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false, // 
              title: Text('Menu'),
            ),
            ListTile(
              title: Text('Manager Produk'),
              onTap: (){
                  Navigator.pushReplacementNamed(context, '/admin');
              },
            ),
          ],),),
          appBar: AppBar(
            title: Text("Produk"),
          ),
          body: ProdukManager(_produks,_addProduk,_deleteProduk)),
    );
  }
}
