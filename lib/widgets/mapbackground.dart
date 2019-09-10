import 'package:flutter/material.dart';

class MapBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage('assets/images/maps.png'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.transparent, Colors.white],
                stops: [0, 0.85],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        )));
  }
}
