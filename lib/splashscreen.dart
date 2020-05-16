import 'package:falasyam/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
class SplashScreenn extends StatefulWidget {

  @override
  _SplashScreennState createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {

  @override
  Widget build (BuildContext context){
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: Home(),
      title: Text('Welcome!', style: TextStyle(fontSize: 20, color: Colors.black),),
      backgroundColor: Colors.white,
      loaderColor: Colors.black,
    );
  }
}