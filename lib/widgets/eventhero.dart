import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/picturebutton.dart';

class EventHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        child: Hero(
            tag: "event1",
            child: PictureButton(
              height: 300,
              isEvent: true,
              width: MediaQuery.of(context).size.width - 40,
              pic: AssetImage("assets/images/googleio.jpg"),
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Google IO - 2019",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      "Technology Presentation",
                      style: TextStyle(color: Color(0xaaffffff), fontSize: 18),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 2, bottom: 60),
                    width: 100,
                    height: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xDD333333)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Fri / 20:00",
                            style: TextStyle(
                                color: Color(0xaaffffff), fontSize: 14),
                          ),
                        ])),
              ],
            ))));
  }
}
