import 'package:flutter/material.dart';

class ProdukCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
              child: Text("Save "),
              onPressed: (){
                showModalBottomSheet(context: context, builder: (BuildContext context){
                    return Center(
                      child:Text("Save Berhasil")
                    );
                });
              },
        )
    );
  }
}