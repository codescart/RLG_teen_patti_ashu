import 'dart:math';

import 'package:animated_styled_widget/animated_styled_widget.dart';
import 'package:dimension/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:simple_animations/simple_animations.dart';


class Borderanimate extends StatefulWidget {
  final Widget child;
  final int milisecond;

  Borderanimate({Key? key, required this.child, required this.milisecond}) : super(key: key);

  @override
  _BorderanimateState createState() => _BorderanimateState();
}

class _BorderanimateState extends State<Borderanimate> {
  @override
  Widget build(BuildContext context) {
    DynamicBorderSide startBorder = DynamicBorderSide(
        width: 10,
        begin: 0.toPercentLength,
        end: 0.toPercentLength,
        gradient: SweepGradient(startAngle: pi, colors: [
          Colors.amberAccent,
          Colors.redAccent,
          Colors.green,
          Colors.amberAccent,
        ]),
        strokeCap: StrokeCap.round,
        strokeJoin: StrokeJoin.round);
    DynamicBorderSide middleBorder = DynamicBorderSide(
        width: 10,
        begin: 0.toPercentLength,
        end: 50.toPercentLength,
        shift: 50.toPercentLength,
        gradient: SweepGradient(startAngle: pi, colors: [
          Colors.amberAccent,
          Colors.redAccent,
          Colors.green,
          Colors.amberAccent,
        ]),
        strokeCap: StrokeCap.round,
        strokeJoin: StrokeJoin.round);
    DynamicBorderSide endBorder = DynamicBorderSide(
        width: 10,
        begin: 100.toPercentLength,
        end: 100.toPercentLength,
        shift: 100.toPercentLength,
        gradient: SweepGradient(startAngle: pi, colors: [
          Colors.amberAccent,

          Colors.redAccent,
          Colors.green,
          Colors.amberAccent,
        ]),
        strokeCap: StrokeCap.round,
        strokeJoin: StrokeJoin.round);

    return ExplicitAnimatedStyledContainer(
      style: Style(
        width: 60.toPXLength,
        height: 80.toPXLength,
        alignment: Alignment.center,
        childAlignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        backgroundDecoration: BoxDecoration(color: Colors.transparent),
        shapeBorder: RectangleShapeBorder(
            border: startBorder.copyWith(strokeCap: StrokeCap.square)),
      ),
      localAnimations: {
        AnimationTrigger.visible: MultiAnimationSequence(
            control: Control.loop,
            sequences: {
              AnimationProperty.shapeBorder:
              AnimationSequence<MorphableShapeBorder>()
                ..add(
                  duration: Duration(milliseconds: widget.milisecond),
                  value: RectangleShapeBorder(
                      border: middleBorder.copyWith(
                          strokeCap: StrokeCap.square)),
                )
                ..add(
                  duration: Duration(milliseconds: widget.milisecond),
                  value: RectangleShapeBorder(
                      border: endBorder.copyWith(
                          strokeCap: StrokeCap.square)),
                ),
            }),
      },
      child: widget.child,
    );
  }
}