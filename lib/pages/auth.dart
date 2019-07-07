import 'dart:ui';

import 'package:flutter/material.dart';
//import './ProdukPage.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthPageState();

}

class _AuthPageState extends State<AuthPage>{
  String _username ="";
  String _password = "";
  bool _accept = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Login "),
          ),
          body:Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: Column(
             
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: "UserName", hintText: "isikan Email"),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value){
                     setState(() {
                      _username = value;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: "Password", hintText: "isikan Password"),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  onChanged: (String value){
                    setState(() {
                      _password = value;
                    });
                  },

                ),
                SizedBox(height: 19,),
                SwitchListTile(
                  value: _accept,
                  title: Text('Setuju Kebijakan'),
                  onChanged: (bool value){
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
                  onPressed: (){
                     Navigator.pushReplacementNamed(context,'/ProduksPage');
                  }, 
                  splashColor: Colors.redAccent,
                ),
                

            ],),

          )
          ),
    );
  }
}