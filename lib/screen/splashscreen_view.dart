import 'package:flutter/material.dart';
import 'package:uts_app/login.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  static String tag = 'splashscreen-page';
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }
  startSplashScreen() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
  Navigator.of(context).pushReplacement(
  MaterialPageRoute(builder: (_){
  return LoginPage();
  }),
  );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Image.asset(
          "assets/images/ars.png",
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}
