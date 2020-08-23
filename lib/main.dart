import 'package:flutter/material.dart';
import 'package:univgo_app/empty_home.dart';
import 'package:univgo_app/splashscreen_content.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash_screen_style(),
    );
  }
}

