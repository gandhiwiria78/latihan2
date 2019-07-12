
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login1State();
    
  }
}

class _Login1State extends State<Login1>{
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colorGradient[1],
                    begin: Alignment.topLeft,
                end: Alignment.bottomCenter
            )
          ),
        ),
        
        Align(
          alignment: Alignment(0,0.5),
          child: ClipPath(
            clipper: CliperPath(),
            child: Container(
              //padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              height:MediaQuery.of(context).size.height/2,
              width: double.infinity,
            ) ,
          ),
        ),
        Align(
          alignment: Alignment(0,-0.8),
          child: new Image.asset(
                "assets/Login/logologin2.png",width: 250,height: 250,),
        ),
        Align(
          alignment: Alignment(0,0.78),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colorGradient[2],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter
              )
            ),
            child: FlatButton(
              onPressed: (){
                
              },
              child: Text("Login Sekarang",style: TextStyle(color: Colors.white,),),
            ),
          ),
        )
      ],
    );
  }
}

class CliperPath extends CustomClipper<Path> {
 
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    
    return path;
   
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

const List<List<Color>> colorGradient=[
  [//Red breed
    Color.fromRGBO( 255, 128, 8,1),
    Color.fromRGBO( 249, 212, 35,1),
  ],
  [// orange Sweet
    Color.fromRGBO( 255, 128, 8,1),
    Color.fromRGBO( 255, 200, 55,1),
  ],
  [ //Chery
    Color.fromRGBO( 235, 51, 73,1),
    //255, 102, 0
   // Color.fromRGBO( 244, 92, 69,1),
    Color.fromRGBO( 255, 102, 0,1),
  ],  
  [// Sea Weed
    Color.fromRGBO(100, 176, 218,1),
    Color.fromRGBO(108, 200, 199,1),
  ],
 
];
