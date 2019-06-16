import 'package:flutter/material.dart';
import '../produks_manager.dart';


class ProdukPage extends StatelessWidget {
  const ProdukPage({Key key}) : super(key: key);

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
          body: ProdukManager()),
    );
  }
}
