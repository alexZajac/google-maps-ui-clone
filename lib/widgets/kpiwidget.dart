import 'package:flutter/material.dart';

class KPIWidget extends StatelessWidget {
  KPIWidget({@required this.name, @required this.child});

  final String name;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 0.23 * MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Color(0xffeef9ff)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey[300],
                    )
                  ]),
              child: this.child,
            ),
            Container(
                margin: EdgeInsets.only(top: 6),
                child:
                    Text(this.name, style: TextStyle(color: Color(0xff699ab5))))
          ],
        ));
  }
}
