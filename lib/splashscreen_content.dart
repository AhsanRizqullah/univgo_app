import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:univgo_app/empty_home.dart';

// ignore: camel_case_types
class splash_screen_style extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: EmptyHome(),
      image: new Image.asset("images/univgo_logo.png"),
      photoSize: 100.0,
      loaderColor: Colors.blue.withOpacity(0.05),
      gradientBackground: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          Colors.blue[700],
          Colors.blue[500],
        ],
      ),
    );
  }
}