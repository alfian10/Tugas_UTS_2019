import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.insert_drive_file,size: 90.0, color: Colors.white,),
            new Text("JADWAL", style: new TextStyle(fontSize: 30.0, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}