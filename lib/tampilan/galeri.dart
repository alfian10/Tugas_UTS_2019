import 'package:flutter/material.dart';

class Telepon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.photo,size: 90.0, color: Colors.white,),
            new Text("GALERI", style: new TextStyle(fontSize: 30.0, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}