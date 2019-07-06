import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase CURD',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: new AssetImage("assets/drawable/Path48.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: <Widget>[
            new Image.asset("assets/drawable/LOGO.png",width: 100,height: 100,),
            
        ],),
      ),
    );
  }
}