import 'package:animated_styled_widget/animated_styled_widget.dart';
import 'package:dimension/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:morphable_shape/morphable_shape.dart';

class ButtonTransform2Page extends StatefulWidget {
  ButtonTransform2Page({this.title = "Button Transform 2"});

  final String title;

  @override
  _ButtonTransform2PageState createState() => _ButtonTransform2PageState();
}

class _ButtonTransform2PageState extends State<ButtonTransform2Page> {
  bool toggleStyle = true;

  late Style beginStyle;
  late Style endStyle;

  @override
  void initState() {
    super.initState();

    beginStyle = Style(
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      width: 50.toVWLength,
      height: 120.toPXLength,
      margin: EdgeInsets.symmetric(vertical: 10),
      backgroundDecoration: BoxDecoration(
          gradient:
          LinearGradient(colors: [Colors.transparent, Colors.transparent])),
      shapeBorder: RoundedRectangleShapeBorder(
          borderRadius:
          DynamicBorderRadius.all(DynamicRadius.circular(15.toPXLength)),
          borderSides: RectangleBorderSides.only(
              top: DynamicBorderSide(
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.transparent
                  ]),
                  width: 12),
              bottom: DynamicBorderSide(
                  gradient:
                  LinearGradient(colors: [Colors.transparent, Colors.transparent]),
                  width: 28),
              left: DynamicBorderSide(
                  color: Colors.transparent, width: 12),
              right: DynamicBorderSide(color: Colors.transparent, width: 28))),
    );

    endStyle = Style(
        alignment: Alignment.center,
        width: 200.toPXLength,
        height: 120.toPXLength,
        margin: EdgeInsets.symmetric(vertical: 10),
        transformAlignment: Alignment.center,
        shadows: [
          ShapeShadow(
              blurRadius: 2,
              spreadRadius: -0.0,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0,
                    0.5
                  ],
                  colors: [
                    Colors.transparent,
                    Colors.transparent
                  ]),
              offset: Offset(0, 0)),

        ],
        shapeBorder: RectangleShapeBorder(
            borderRadius:
            DynamicBorderRadius.all(DynamicRadius.circular(20.toPXLength)),
            border:
            DynamicBorderSide(width: 3, color: Colors.lightGreen.shade700)),
        childAlignment: Alignment.center,
        transform: SmoothMatrix4()..rotateZ(3.1416));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            AnimatedStyledContainer(
              curve: Curves.easeInOut,
              duration: Duration(seconds: 3),
              style: toggleStyle ? beginStyle : endStyle,
              child: Container(
                child: Text('pankaj'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            toggleStyle = !toggleStyle;
          });
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}