import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/ProdukPage.dart';
import './pages/produk_Admin.dart';
void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent
      ),
      home: AuthPage(),
      routes: {
        '/': (BuildContext context)=> ProdukPage(),
        '/admin': (BuildContext context)=> ProdukAdminPage(),

      },
    );
  }
}
