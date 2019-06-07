import 'package:flutter/material.dart';

class Produks extends StatelessWidget {
  final List<String> produks;
  // const adalah memberitahu bahwa nilai tidak bisa di tambah set hanya sekali 
  Produks([this.produks=const []]){
    print("Produk Konstruksi");
  }

  @override
  Widget build(BuildContext context) {
    print("Produk Build");
    return ListView(
      children: produks
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
