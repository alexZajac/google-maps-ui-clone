import 'package:flutter/material.dart';

class ExploreRow extends StatelessWidget {
  ExploreRow();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Explore nearby",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Container(
              width: 26,
              height: 26,
              margin: EdgeInsets.only(left: 24),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[50], shape: BoxShape.circle),
              child: Icon(Icons.chevron_right, color: Colors.blue, size: 24),
            )
          ],
        ));
  }
}
