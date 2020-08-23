import 'package:flutter/material.dart';
import 'package:univgo_app/discussion.dart';

// ignore: camel_case_types
class preAdd extends StatelessWidget {
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
                'images/detail.jpg',
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 560),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          _toDiscuss(context);
                        },
                        color: Colors.white.withOpacity(0.05),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future _toDiscuss(BuildContext context) async {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Discussion()),
    );

  }
}
