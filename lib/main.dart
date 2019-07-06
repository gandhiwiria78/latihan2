import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/ProdukPage.dart';
import './pages/produk_Admin.dart';
import './latihan/latihan.dart';
import './pages/produks.dart';
import './pages/produkDetail.dart';


void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State<MyApp>{
  List<Map<String,String>> _produks =[];

   void _addProduk(Map value) {
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
        accentColor: Colors.tealAccent
      ),
      home: AuthPage(),
      routes: {
        '/ProduksPage': (BuildContext context)=> ProdukPage(_produks,_addProduk,_deleteProduk),
        '/admin': (BuildContext context)=> ProdukAdminPage(),
        
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathElement = setting.name.split('/');

        if(pathElement[0]!=""){
          return null;
        }
        if(pathElement[1]=="Produk"){
          final int index = int.parse(pathElement[2]); 
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProdukDetail(_produks[index]['title'],_produks[index]['imagePath']),
          );
        }
        return null;
      },
    );
  }
}
