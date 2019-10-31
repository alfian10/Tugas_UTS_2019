import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 4);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Arsenal Fans Indonesia'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAVORITE'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('SETTING'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('BANTUAN'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //create appBar
      appBar: new AppBar(

        backgroundColor: Colors.red,

        title: new Text ("Arsenal FC"),


        bottom: new TabBar(
          controller: controller,

          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.book),text: "Berita",),
            new Tab(icon: new Icon(Icons.insert_drive_file),text: "Jadwal",),
            new Tab(icon: new Icon(Icons.insert_chart),text: "Klasemen",),
            new Tab(icon: new Icon(Icons.photo),text: "Galeri", ),
          ],
        ),
      ),
    );
  }
}
