import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/eventhero.dart';
import 'package:test_flutter/widgets/eventbar.dart';
import 'package:test_flutter/widgets/mapbackground.dart';
import 'package:test_flutter/widgets/eventbanner.dart';

class Event extends StatelessWidget {
  Event();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      MapBackground(),
      EventBanner(),
      EventHero(),
      Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(top: 60, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.black),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.chevron_left, color: Colors.white, size: 26),
              ))),
      EventBar(
        height: 80,
        baseTop: MediaQuery.of(context).size.height * 0.45,
      )
    ]));
  }
}
