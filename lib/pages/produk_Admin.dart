import 'package:flutter/material.dart';

class ProdukAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Menu'),
              ),
              ListTile(
                title: Text('All Product'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/ProduksPage');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("IU"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Buat Produk",
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "List Produk",
              ),
            ],
          ),
        ),
      ),
      length: 2,
    );
  }
}
