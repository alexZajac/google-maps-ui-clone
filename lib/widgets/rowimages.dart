import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/picturebutton.dart';

class RowImages extends StatelessWidget {
  RowImages();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 24, left: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PictureButton(
              pic: AssetImage("assets/images/club.jpg"),
              children: <Widget>[
                Text(
                  "Night clubs",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/dinner.jpg"),
              children: <Widget>[
                Text(
                  "Late-night dining",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/georgian.jpg"),
              children: <Widget>[
                Text(
                  "Georgian restaurants",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/cocktail.jpg"),
              children: <Widget>[
                Text(
                  "Great cocktails",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/park.jpg"),
              children: <Widget>[
                Text(
                  "Parks",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/museums.jpg"),
              children: <Widget>[
                Text(
                  "Museums",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
          PictureButton(
              pic: AssetImage("assets/images/places.jpg"),
              children: <Widget>[
                Text(
                  "Historical places",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ]),
        ],
      ),
    );
  }
}
