import 'package:flutter/material.dart';

class RowLists extends StatelessWidget {
  RowLists();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 26),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Lists",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ))
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 16, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 220,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            height: 110,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/georgian.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(
                                top: 90,
                                left: (MediaQuery.of(context).size.width / 2 -
                                            25) /
                                        2 -
                                    15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/googleicon.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            margin:
                                EdgeInsets.only(top: 110, left: 5, right: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.all(5),
                                    width:
                                        (MediaQuery.of(context).size.width / 2 -
                                                25) *
                                            0.66,
                                    child: Text(
                                      "Long-distance footpath",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                                Text(
                                  "19 places",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 220,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            height: 110,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/club.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(
                                top: 90,
                                left: (MediaQuery.of(context).size.width / 2 -
                                            25) /
                                        2 -
                                    15),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/googleicon.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            margin: EdgeInsets.only(top: 110),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.all(5),
                                    width:
                                        (MediaQuery.of(context).size.width / 2 -
                                                25) *
                                            0.66,
                                    child: Text(
                                      "Plays and performances",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                                Text(
                                  "12 places",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ]));
  }
}
