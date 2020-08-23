import 'package:flutter/material.dart';

// ignore: camel_case_types
class Chat extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'images/chat.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
//
//  _toDiscuss(BuildContext context) {
//
//    Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => UniversityList()),
//    );
//
//  }
}
