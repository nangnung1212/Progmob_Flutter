import 'package:flutter/material.dart';
import 'dart:async';
import 'package:progmob_flutter/pertemuan1.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});


  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashcreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pertemuan1(title: "Pertemuan 1")));
    });
  }
  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff329cef),
      body: Center(
        child: Image.asset(
            "images/logo.png",
        width: 200.0,
        height: 200.0,
        ),
      )
    );
  }
}