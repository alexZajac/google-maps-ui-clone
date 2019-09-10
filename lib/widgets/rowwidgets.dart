import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/kpiwidget.dart';

class RowWidgets extends StatelessWidget {
  RowWidgets();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          KPIWidget(
            name: "Restaurant",
            child: Icon(Icons.restaurant, color: Color(0xffFF2D55), size: 26),
          ),
          KPIWidget(
            name: "Hotels",
            child: Icon(Icons.hotel, color: Color(0xff27AE60), size: 26),
          ),
          KPIWidget(
            name: "Coffee",
            child: Icon(Icons.local_cafe, color: Color(0xff2F80ED), size: 26),
          ),
          KPIWidget(
            name: "More",
            child: Icon(Icons.more_horiz, color: Color(0xffF2994A), size: 26),
          ),
        ],
      ),
    );
  }
}
