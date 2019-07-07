import 'package:flutter/material.dart';
//import './ProdukPage.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Login "),
          ),
          body:Center(child: Column(children: <Widget>[
            Text("Login "),
            RaisedButton(child:
              Text('Login Sekarang '),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/ProduksPage');
              }
            ,)

          ],),)
          ),
    );
  }
}