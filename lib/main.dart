import 'package:flutter/material.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _produks = ['Test'];

  @override
  Widget build(BuildContext context) {
    print('ssdasdsa');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main sdasd"),
        ),
        body: Card(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(2),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _produks.add("value");
                  });
                },
                child: Text("Tambah Gambar"),
              ),
            ),
            
          ],
        )),
      ),
    );
  }
}
