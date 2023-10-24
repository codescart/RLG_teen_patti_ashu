import 'package:flutter/material.dart';

class chips_bank extends StatefulWidget {
  const chips_bank({Key? key}) : super(key: key);

  @override
  State<chips_bank> createState() => _chips_bankState();
}

class _chips_bankState extends State<chips_bank>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xff2a1705),
                // border: Border.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage("assets/images/infobacktable.png"),
                    fit: BoxFit.fill)),
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).viewInsets.top + 20,
                        bottom: MediaQuery.of(context).viewInsets.bottom + 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                          controller: _tabController,
                          //  labelColor: Colors.black,
                          // unselectedLabelColor: Colors.white,
                          isScrollable: false,
                          indicatorColor: Color(0xff),
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                    "Promo Code",
                                    style: TextStyle(
                                        color: Color(0xff552e00),
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                        "Add Chips",
                                    style: TextStyle(
                                        color: Color(0xff552e00),
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                    "Gift Chips",
                                    style: TextStyle(
                                        color: Color(0xff552e00),
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                    "Redeem",
                                    style: TextStyle(
                                        color: Color(0xff552e00),
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(
                                      child: Text(
                                    "History",
                                    style: TextStyle(
                                        color: Color(0xff552e00),
                                        fontSize: 16 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                          ]),
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: VerticalDivider(
                      width: MediaQuery.of(context).size.width * 0.0100,
                      thickness: 2,
                      color: Colors.amber,
                    )),
                SingleChildScrollView(
                  child: Flexible(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.84,
                      width: MediaQuery.of(context).size.width * 0.66,
                      child: RotatedBox(
                        quarterTurns: 9,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/entercouponcode.png"),
                                      fit: BoxFit.fill)),
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0550,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0850,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercode.png"),
                                              fit: BoxFit.fill)),
                                      child: Center(
                                          child: Text(
                                        "Enter Promo Code",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 16 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0550,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.40,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercouponcode.png"),
                                              fit: BoxFit.fill)),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          child: TextField(
                                            cursorColor: Colors.white,
                                            decoration: InputDecoration(
                                                hintText:
                                                    " Enter Promo Code Here:",
                                                hintStyle: TextStyle(
                                                    fontSize: 16 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                focusColor: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0750,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.11,
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/enterbutton.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0350,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.0750,
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/entercode.png"),
                                            fit: BoxFit.fill)),
                                    child: Center(
                                        child: Text(
                                      "Add chips to start gifting your chips to anyone",
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 15 *
                                              MediaQuery.textScaleFactorOf(
                                                  context),
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0400,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/addchipbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.21,
                                        ),
                                        Text(
                                          "800.00Cr",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 125.0),
                                          child: Text(
                                            "Rs.10000.0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15 *
                                                    MediaQuery.textScaleFactorOf(
                                                        context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0150,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/addchipbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.21,
                                        ),
                                        Text(
                                          "1200.00Cr",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 116.0),
                                          child: Text(
                                            "Rs.15000.0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15 *
                                                    MediaQuery.textScaleFactorOf(
                                                        context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0150,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/addchipbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.21,
                                        ),
                                        Text(
                                          "1800.00Cr",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 116.0),
                                          child: Text(
                                            "Rs.20000.0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15 *
                                                    MediaQuery.textScaleFactorOf(
                                                        context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0150,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/addchipbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.21,
                                        ),
                                        Text(
                                          "2,250.00Cr",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 112.0),
                                          child: Text(
                                            "Rs.25000.0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15 *
                                                    MediaQuery.textScaleFactorOf(
                                                        context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.0150,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/addchipbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.21,
                                        ),
                                        Text(
                                          "4,800.00Cr",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15 *
                                                  MediaQuery.textScaleFactorOf(
                                                      context),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 112.0),
                                          child: Text(
                                            "Rs.50000.0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15 *
                                                    MediaQuery.textScaleFactorOf(
                                                        context),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/entercouponcode.png"),
                                      fit: BoxFit.fill)),
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0450,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0750,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercode.png"),
                                              fit: BoxFit.fill)),
                                      child: Center(
                                          child: Text(
                                        "Add chips to start gifting your chips to anyone",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 15 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0450,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.54,
                                      width: MediaQuery.of(context).size.width *
                                          0.60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercouponcode.png"),
                                              fit: BoxFit.fill)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.37,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.20,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/bigbox.png"),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.35,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.20,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/bigbox2.png"),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0250,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0900,
                                      width: MediaQuery.of(context).size.width *
                                          0.14,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/chipsyellowbutton.png"),
                                              fit: BoxFit.cover)),
                                      child: Center(
                                          child: Text(
                                        "Add Chips",
                                        style: TextStyle(
                                            color: Color(0xff552e00),
                                            fontSize: 16 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/entercouponcode.png"),
                                      fit: BoxFit.fill)),
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0550,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0850,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercode.png"),
                                              fit: BoxFit.fill)),
                                      child: Center(
                                          child: Text(
                                        "Enter Code",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 16 *
                                                MediaQuery.textScaleFactorOf(
                                                    context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0550,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.40,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/entercouponcode.png"),
                                              fit: BoxFit.fill)),
                                      child: Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    " Enter Coupon Code Here:",
                                                hintStyle: TextStyle(
                                                    fontSize: 16 *
                                                        MediaQuery
                                                            .textScaleFactorOf(
                                                                context),
                                                    fontWeight:
                                                        FontWeight.bold),
                                                focusColor: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.0750,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.11,
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/okaybutton.png"),
                                              fit: BoxFit.fill)),
                                      // child: Container(
                                      //   height:
                                      //       MediaQuery.of(context).size.height *
                                      //           0.0200,
                                      //   width:
                                      //       MediaQuery.of(context).size.width *
                                      //           0.0100,
                                      //   decoration: BoxDecoration(
                                      //       borderRadius:
                                      //           BorderRadius.circular(10),
                                      //       image: DecorationImage(
                                      //           image: AssetImage(
                                      //               "assets/images/redeemtxt.png"),
                                      //           fit: BoxFit.fill)),
                                      // ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/history.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.0700,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/historydeco.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.23,
                                  ),
                                  Text(
                                    "No transactions found",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 14 *
                                            MediaQuery.textScaleFactorOf(
                                                context),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.39,
            left: MediaQuery.of(context).size.width * 0.83,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0950,
                width: MediaQuery.of(context).size.width * 0.0600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cross.png"),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
