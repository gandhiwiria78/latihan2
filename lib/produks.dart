import 'package:flutter/material.dart';

class produks extends StatelessWidget {
  const produks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _produks
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('Makanan')
                  ],
                ),
              ))
          .toList(),
    );
  }
}
