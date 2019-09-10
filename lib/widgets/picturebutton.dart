import 'package:flutter/material.dart';
import 'package:test_flutter/screens/event.dart';

class PictureButton extends StatelessWidget {
  PictureButton(
      {this.pic,
      this.children,
      this.height = 100,
      this.width = 100,
      this.isEvent = false});
  final AssetImage pic;
  final double height;
  final double width;
  final bool isEvent;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
            width: this.width,
            margin: this.isEvent
                ? EdgeInsets.symmetric(horizontal: 0)
                : EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: this.isEvent
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))
                    : BorderRadius.circular(20),
                image: DecorationImage(image: this.pic, fit: BoxFit.cover)),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Event()));
                },
                child: Container(
                  width: this.width,
                  height: this.height,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.transparent, Color(0xff111111)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: this.children),
                ))));
  }
}
