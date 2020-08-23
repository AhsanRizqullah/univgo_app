import 'package:flutter/material.dart';
import 'package:univgo_app/university_list.dart';

class EmptyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Univgo',
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 75,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/univgo_logo.png', height: 32, width: 75,),
              ],
            ),
          ),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            Image.asset('images/profile.png', height: 32, width: 75,),
          ],

        ),
        body: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'You have not chose your University'
                ),
                SizedBox( height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.blue,
                  ),
                  child: FlatButton(
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      _list(context);
                    },

                    child: Text(
                      "Add New",
                      style: TextStyle(fontSize: 20.0, fontFamily: 'roboto', fontWeight: FontWeight.bold)
                    ),
                  ),
                )
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _list(context);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Future _list(context) async{
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UniversityList()),
    );
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.blue, // button color
        child: InkWell(
          splashColor: Colors.red, // inkwell color
          child: SizedBox(width: 56, height: 56, child: Icon(Icons.menu)),
          onTap: () {},
        ),
      ),
    );
  }
}

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => new _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new InkWell(// this is the one you are looking for..........
          onTap: () => setState(() => _count++),
          child: new Container(
            //width: 50.0,
            //height: 50.0,
            padding: const EdgeInsets.all(20.0),//I used some padding without fixed width and height
            decoration: new BoxDecoration(
              shape: BoxShape.circle,// You can use like this way or like the below line
              //borderRadius: new BorderRadius.circular(30.0),
              color: Colors.green,
            ),
            child: new Text(_count.toString(), style: new TextStyle(color: Colors.white, fontSize: 50.0)),// You can add a Icon instead of text also, like below.
            //child: new Icon(Icons.arrow_forward, size: 50.0, color: Colors.black38)),
          ),//............
        ),
      ),
    );
  }
}



