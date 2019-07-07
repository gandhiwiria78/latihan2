import 'dart:ui';

import 'package:flutter/material.dart';
//import './ProdukPage.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _username = "";
  String _password = "";
  bool _accept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/drawable/Path48.png"))),
        ),
        SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              new Image.asset(
                "assets/logosatu.png",
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "isikan Email",
                    icon: Icon(Icons.email, color: Colors.white),
                    labelStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    hintStyle: new TextStyle(color: Colors.white30),
                    focusColor: Colors.white),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                onChanged: (String value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Password",
                    hintText: "isikan Password",
                    icon: Icon(Icons.account_box, color: Colors.white),
                    labelStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    hintStyle: new TextStyle(color: Colors.white30),
                    focusColor: Colors.white),
                keyboardType: TextInputType.text,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                onChanged: (String value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SizedBox(
                height: 19,
              ),
              SwitchListTile(
                value: _accept,
                title: Text(
                  'Setuju Kebijakan',
                  style: new TextStyle(color: Colors.white),
                ),
                onChanged: (bool value) {
                  setState(() {
                    _accept = value;
                  });
                },
              ),
              Text(_username),
              MaterialButton(
                height: 40.0,
                minWidth: window.physicalSize.width,
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: new Text("Login Sekarang"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/ProduksPage');
                },
                splashColor: Colors.redAccent,
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
