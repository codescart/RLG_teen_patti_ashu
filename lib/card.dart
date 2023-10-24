import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui' as ui;
import 'package:playing_cards_layouts/playing_cards_layouts.dart';



class NawAni extends StatefulWidget {

  final String card1;
  final String card2;
  final String card3;

  NawAni({Key? key, required this.card1, required this.card2, required this.card3}) : super(key: key);



  @override
  State<NawAni> createState() => _NawAniState();
}

class _NawAniState extends State<NawAni> with TickerProviderStateMixin {
  late AnimationController _controller;
  BoxConstraints? viewportConstraints;
  List<Map<String, dynamic>> flowCards = [];
  List<Map<String, dynamic>> blockCards = [];
  List<Map<String, dynamic>> columnCards = [];
  double visible = 0.0;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    SchedulerBinding.instance.addPostFrameCallback((_) {
      //_controller.repeat();
      generateCards();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Generate the maze
  void generateCards() {
    for (int i = 0; i < 3; i++) {
      flowCards.add({
        'id':UniqueKey().toString(),
        "color": Colors.red,
        "image":AssetImage("assets/cardback.png"),
        // // Color.fromARGB(
        // //     255, Colors.purple.red, Colors.purple.green, Colors.purple.blue),
        // "id": UniqueKey().toString(),
        "width": 70.0,
        "height": 100.0,
      });


    }

    List<Map<String, dynamic>> _cards = fanCards(flowCards, {
      "flow": "horizontal", // The layout direction (horizontal or vertical)
      "fanDirection": "n",
      "imagesUrl": AssetImage(widget.card3),
      "spacing": 0.2,
      "radius": 200.0,
      "width": 80.0,
    });



    flowCards.clear();
    blockCards.clear();
    columnCards.clear();
    setState(() {
      flowCards = _cards;

    });
  }

  List<Widget> getCards(List<Map<String, dynamic>> sourceCards, String mode) {
    List<Widget> cards = [];
    cards.add(Container());
    int counter = 0;
    sourceCards.asMap().forEach((key, value) {
      double? angle = value["coords"]["angle"];
      if (angle != null) {
        angle = (angle - 90) * (pi / 180);
      }

      cards.add(
        Positioned(
          left: value["coords"]["x"].toDouble(),
          top: value["coords"]["y"].toDouble(),
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTapDown: (details) => onTap(context, details, mode, key),
            child: AbsorbPointer(
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: Transform.rotate(
                  angle: angle ?? 0.0,
                  child: FadeTransition(
                    opacity: animateOpacity(counter),
                    child: Container(
                      height: 50.0,
                      width: 25.0,
                      color: Colors.transparent,
                      child: Image.network(widget.card1),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: value["card"]["color"],
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(10.0),
                      //     ),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.black.withOpacity(0.19),
                      //         spreadRadius: 4,
                      //         blurRadius: 6,
                      //         offset:
                      //         Offset(0, 3), // changes position of shadow
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      // cards.add(
      //   Positioned(
      //     left: value["coords"]["x"].toDouble(),
      //     top: value["coords"]["y"].toDouble(),
      //     child: GestureDetector(
      //       behavior: HitTestBehavior.translucent,
      //       onTapDown: (details) => onTap(context, details, mode, key),
      //       child: AbsorbPointer(
      //         child: Transform.translate(
      //           offset: const Offset(0, 0),
      //           child: Transform.rotate(
      //             angle: angle ?? 0.0,
      //             child: FadeTransition(
      //               opacity: animateOpacity(counter),
      //               child: Container(
      //                 height: 50.0,
      //                 width: 25.0,
      //                 color: Colors.transparent,
      //                 child: Image.asset(widget.card2),
      //
      //                 // Container(
      //                 //   decoration: BoxDecoration(
      //                 //     color: value["card"]["color"],
      //                 //     borderRadius: BorderRadius.all(
      //                 //       Radius.circular(10.0),
      //                 //     ),
      //                 //     boxShadow: [
      //                 //       BoxShadow(
      //                 //         color: Colors.black.withOpacity(0.19),
      //                 //         spreadRadius: 4,
      //                 //         blurRadius: 6,
      //                 //         offset:
      //                 //         Offset(0, 3), // changes position of shadow
      //                 //       ),
      //                 //     ],
      //                 //   ),
      //                 // ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // );
      // cards.add(
      //   Positioned(
      //     left: value["coords"]["x"].toDouble(),
      //     top: value["coords"]["y"].toDouble(),
      //     child: GestureDetector(
      //       behavior: HitTestBehavior.translucent,
      //       onTapDown: (details) => onTap(context, details, mode, key),
      //       child: AbsorbPointer(
      //         child: Transform.translate(
      //           offset: const Offset(0, 0),
      //           child: Transform.rotate(
      //             angle: angle ?? 0.0,
      //             child: FadeTransition(
      //               opacity: animateOpacity(counter),
      //               child: Container(
      //                 height: 50.0,
      //                 width: 25.0,
      //                 color: Colors.transparent,
      //                 child: Image.asset(widget.card3),
      //
      //                 // Container(
      //                 //   decoration: BoxDecoration(
      //                 //     color: value["card"]["color"],
      //                 //     borderRadius: BorderRadius.all(
      //                 //       Radius.circular(10.0),
      //                 //     ),
      //                 //     boxShadow: [
      //                 //       BoxShadow(
      //                 //         color: Colors.black.withOpacity(0.19),
      //                 //         spreadRadius: 4,
      //                 //         blurRadius: 6,
      //                 //         offset:
      //                 //         Offset(0, 3), // changes position of shadow
      //                 //       ),
      //                 //     ],
      //                 //   ),
      //                 // ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // );
      counter += 1;
    });

    return cards;
  }

  void randomize() {
    generateCards();
  }

  void onTap(
      BuildContext context, TapDownDetails details, String mode, int index) {
    // find the card
    var card = mode == "horizontal" ? blockCards : columnCards;
    double dx = details.globalPosition.dx - 100;
    double dy = details.globalPosition.dy;

    if (mode == "vertical") {
      dx = details.globalPosition.dx - 100;
      dy = details.globalPosition.dy - 600;
    }

    var cardWidth = card[0]["card"]["width"];
    var cardHeight = card[0]["card"]["height"];
    var offsetX = cardWidth * 0.2;
    var offsetY = cardHeight * 0.2;
    var indexX = (dx / (cardWidth - offsetX)).floor();
    var indexY = (dy / (cardHeight - offsetY)).floor();

    // small quality of life enhancement
    if (mode == "horizontal_rotated") {
      indexX = index;
    }

    if (indexX >= card.length) {
      indexX = card.length - 1;
    }
    if (indexX < 0) {
      indexX = 0;
    }

    if (indexY >= card.length) {
      indexY = card.length - 1;
    }
    if (indexY < 0) {
      indexY = 0;
    }

    if (mode == "horizontal" || mode == "horizontal_rotated") {
      animateCard(indexX, () => {setState(() => {})}, mode);
    } else {
      animateCard(indexY, () => {setState(() => {})}, mode);
    }
  }

  Animation<double> animateOpacity(int index) {
    AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    Animation<double> tween =
    Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            0.1 * index,
            1.0,
            curve: Curves.ease,
          ),
        ));

    tween.addListener(() => {
      //setState(() => {}),
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      _controller.forward();
    });

    return tween;
  }

  // animate the card
  void animateCard(int cardIndex, Function updateFn, String mode) {
    var card = mode == "horizontal"
        ? blockCards[cardIndex]
        : mode == "horizontal_rotated"
        ? flowCards[cardIndex]
        : columnCards[cardIndex];
    if (mode == "horizontal_rotated") {
      card = flowCards[cardIndex];
    }
    var currentY = card["coords"]["y"];
    var currentX = card["coords"]["x"];
    double from = 0;
    double to = -10;

    if (mode == "horizontal") {
      from = 0;
      to = -10;
    }

    if (mode == "horizontal_rotated") {
      if (card["coords"]["originalY"] == null) {
        card["coords"]["originalY"] = card["coords"]["y"];
      }
      from = card["coords"]["y"];
      to = (card["coords"]["y"] - 10);
    }

    if (currentY < 0) {
      from = currentY;
      to = 0;
    }

    if (mode == "horizontal_rotated") {
      if (currentY != card["coords"]["originalY"]) {
        to = card["coords"]["originalY"];
      }
    }

    if (mode == "vertical") {
      from = 0;
      to = 10;

      if (currentX > 0) {
        from = currentX;
        to = 0;
      }
    }

    AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this);
    final Animation<double> curve =
    CurvedAnimation(parent: controller, curve: Curves.easeOut);
    Animation<double> tween = Tween(begin: from, end: to).animate(curve);

    tween.addListener(() => {
      if (mode == "horizontal" || mode == "horizontal_rotated")
        {
          card["coords"]["y"] = tween.value,
        }
      else
        {
          card["coords"]["x"] = tween.value,
        },
      updateFn(),
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,

        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          this.viewportConstraints = viewportConstraints;
          return Stack(children: [
            Positioned(
              top: 100,
              left: 30,
              child: Container(
                // width: flowCards.length * 80,
                // height: 150,

                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children:
                  getCards(flowCards, "horizontal_rotated",),

                ),
              ),

            ),


          ]);

          //);
        }));
  }
}