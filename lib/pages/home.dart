import 'package:flutter/material.dart';

import '../produks_manager.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Menu Awal"),
          ),
          body: ProdukManager()),
    );
  }
}
