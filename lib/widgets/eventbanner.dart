import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.9,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.75,
            left: 40,
            right: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.only(left: 14, top: 14),
                        child: Text(
                          "Shoreline Amphiyheatre in Mountain View, CA.",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.only(left: 14, top: 6),
                        child: Text(
                          "USA",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ))
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 14, top: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/googleio.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 140,
                  height: 30,
                  margin: EdgeInsets.only(left: 14, top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.directions,
                          color: Theme.of(context).primaryColor, size: 24),
                      Text(
                        "Directions",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                )
              ],
            )
          ],
        )));
  }
}
