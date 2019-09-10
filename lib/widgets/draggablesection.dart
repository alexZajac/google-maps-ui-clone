import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/explorerow.dart';
import 'package:test_flutter/widgets/rowwidgets.dart';
import 'package:test_flutter/widgets/rowimages.dart';
import 'package:test_flutter/widgets/rowevents.dart';
import 'package:test_flutter/widgets/rowlists.dart';
import 'package:test_flutter/widgets/searchbar.dart';

class DraggableSection extends StatelessWidget {
  final double top;
  final double searchBarHeight;

  DraggableSection({this.top, this.searchBarHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1.1,
        margin: EdgeInsets.only(top: this.top),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 30,
                color: Colors.grey[300],
              )
            ]),
        child: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              ExploreRow(),
              RowWidgets(),
              RowImages(),
              RowEvents(),
              RowLists()
            ]),
            SearchBar(
                baseTop: this.top == 0.0 ? 0.0 : this.top,
                height: this.searchBarHeight),
          ],
        ));
  }
}
