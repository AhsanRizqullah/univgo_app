import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

backgroundImage(String images) {
  return new Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0.0, 0.0), // changes position of shadow
        ),
      ],
      image: DecorationImage(
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.blue[400].withOpacity(1.0), BlendMode.multiply),
        image: AssetImage(images),
      ),
    ),
  );
}

logoProfile(String profile) {
  return new Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(100)),
      boxShadow: [
        BoxShadow(
          color: Colors.black26.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    height: 120,
    width: 120,
    child: Image.asset(
      profile,
      width: 120,
      height: 120,
    ),
    alignment: Alignment.center,
  );
}

topContent(String title) {
  return new Container(
    padding: EdgeInsets.all(16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              title,
              style: bigHeaderTextStyle,
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    ),
  );
}

toDetail(String people) {
  return new Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
      color: const Color(0xA600264d).withOpacity(0.8),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        people + " " + 'participants >',
        style: footerTextStyle,
      ),
    ),
  );
}

final baseTextStyle =
    const TextStyle(color: Colors.white, fontFamily: 'roboto');

final appbarStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.bold);

final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);

final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w300);

final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);
