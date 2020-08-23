import 'package:flutter/material.dart';
import 'package:univgo_app/partner.dart';

// ignore: camel_case_types
class Discussion extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
//          onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'images/discuss.jpg',
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 560, left: 280),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          _toPartner(context);
                        },
                        color: Colors.white.withOpacity(0.05),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 623, left: 32),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        _toPartner(context);
                      },
                      color: Colors.white.withOpacity(0.05),
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
//
  _toPartner(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Partner()),
    );

  }
}
