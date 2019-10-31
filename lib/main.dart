import 'package:flutter/material.dart';
import 'package:uts_app/screen/splashscreen_view.dart';
import 'package:uts_app/home/home_page.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    SplashScreenPage.tag: (context) => SplashScreenPage(),
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seputar Arsenal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SplashScreenPage(),
      routes: routes,
    );
  }
}

