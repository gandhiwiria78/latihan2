import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/ProdukPage.dart';
import './pages/produk_Admin.dart';
//import './latihan/latihan.dart';
//import './pages/produks.dart';
import './pages/produkDetail.dart';


void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{

  List<Map<String,dynamic>> _produks =[];

   void _addProduk(Map<String,dynamic> value) {
    setState(() {
      _produks.add(value);
    });
  }

void _deleteProduk(int index){
  setState(() {
    _produks.removeAt(index);
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal,
        
      ),
      home: AuthPage(),
      routes: {
        '/ProduksPage': (BuildContext context)=> ProdukPage(_produks,_deleteProduk),
        '/admin': (BuildContext context)=> ProdukAdminPage(_addProduk,_deleteProduk),
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathElement = setting.name.split('/');

        if(pathElement[0]!=""){
          return null;
        }
        if(pathElement[1] =="produks"){
          final int index = int.parse(pathElement[2]); 
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProdukDetail(_produks[index]['judul'],_produks[index]['image'],_produks[index]['harga'],_produks[index]['deskripsi']),
          );
        }
        return null;
      },

      onUnknownRoute:(RouteSettings settings) {
        return MaterialPageRoute<bool>(
            builder: (BuildContext context) =>(ProdukPage(_produks,_deleteProduk)),
          );
      },
    );
  }
}
