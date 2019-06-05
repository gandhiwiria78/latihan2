import 'package:flutter/material.dart';

class Produks extends StatelessWidget {
  final List<String> produks;
  Produks( this.produks){
    print("Produk Konstruksi");
  }

  @override
  Widget build(BuildContext context) {
    print("Produk Build");
    return Column(
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
