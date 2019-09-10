import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/widgets/background.dart';
import 'package:test_flutter/widgets/topsection.dart';
import 'package:test_flutter/widgets/draggablesection.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  double top = 0.0;
  double initialTop = 0.0;

  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    final baseTop = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundImage(
            mapWidget: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(48.814716, 2.349014),
                zoom: 12.0,
              ),
            ),
          ),
          TopSection(),
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              final double scrollPos = details.globalPosition.dy;
              if (scrollPos < baseTop && scrollPos > searchBarHeight) {
                setState(() {
                  top = scrollPos;
                });
              }
            },
            child: DraggableSection(
              top: this.top == 0.0 ? baseTop : this.top,
              searchBarHeight: searchBarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
