import 'package:flutter/material.dart';

import 'package:test_flutter/screens/home.dart';
import 'package:test_flutter/screens/event.dart';

import 'package:test_flutter/theme/style.dart';

void main() => runApp(GMapsClone());

class GMapsClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Maps Redesign challenge',
      theme: appTheme(),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext ctx) => Home(),
        "/Event": (BuildContext ctx) => Event()
      },
    );
  }
}
