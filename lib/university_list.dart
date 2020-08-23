import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:univgo_app/pre_add.dart';
import 'package:univgo_app/public.dart';

class UniversityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          'Find University',
          style: appbarStyle,
        ),
        actions: <Widget>[
          Image.asset(
            'images/profile.png',
            height: 32,
            width: 75,
          ),
        ],
      ),
      body: _listBody(),
    );
  }
}

// ignore: camel_case_types
class _listBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: _PageList(),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'search',
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'top search:',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Color(0xFF126AD2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                'Oxford',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Color(0xFF126AD2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                'Cambridge',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Color(0xFF126AD2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                'Stanford',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Color(0xFF126AD2)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                'Princeton',
                                style: TextStyle(
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  __PageListState createState() => __PageListState();
}

class __PageListState extends State<_PageList> {
  List<String> judul = [
    'Massachusetts \n'
        'Institute of \n'
        'Technology',
    'Islamic \n'
        'University \n'
        'of Madinah',
    'Stanford',
    'Harvard',
  ];
  List<String> participant = [
    '217',
    '314',
    '457',
    '152',
  ];
  List<String> gambar = [
    'images/mit.jpg',
    'images/uim.jpg',
    'images/stanford.jpg',
    'images/harvard.jpg',
  ];
  List<String> logo = [
    'images/mitlogo.png',
    'images/uimlogo.png',
    'images/stanfordlogo.png',
    'images/harvardlogo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            padding: EdgeInsets.only(bottom: 12),
            itemCount: judul.length,
            itemBuilder: (BuildContext context, int index) {
              final title = judul[index].toString();
              final people = participant[index].toString();
              final images = gambar[index].toString();
              final profile = logo[index].toString();
              //container
              return GestureDetector(
                  child: Container(
                margin: EdgeInsets.all(8.0),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 175,

                //design
                child: Stack(
                  children: <Widget>[
                    //background
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 130,
                                child: backgroundImage(images),
                              ),
                            ),

                            // Top Content
                            Padding(
                              padding: EdgeInsets.only(left: 159.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  topContent(
                                    title,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    //Participant >
                    Padding(
                      padding: const EdgeInsets.only(left: 260.0, bottom: 11.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          toDetail(people),
                        ],
                      ),
                    ),

                    //logo avatar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                          child: logoProfile(profile),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => preAdd())
                );
              }
              );
            }));
  }
}
