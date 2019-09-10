import 'package:flutter/material.dart';

class EventBar extends StatelessWidget {
  EventBar({@required this.height, @required this.baseTop});

  final double height;
  final double baseTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: this.height,
      margin: EdgeInsets.only(left: 30, right: 30, top: this.baseTop),
      padding: EdgeInsets.only(right: 60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          new BoxShadow(
              color: Colors.black38,
              offset: new Offset(0.0, 10.0),
              blurRadius: 20.0)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.33,
              height: 60,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Theme.of(context).primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.directions, size: 30, color: Colors.white),
                  Text(
                    "Directions",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              )),
          Icon(
            Icons.share,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          Icon(
            Icons.calendar_today,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          Icon(
            Icons.call,
            color: Theme.of(context).primaryColor,
            size: 30,
          )
        ],
      ),
    );
  }
}
