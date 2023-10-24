import 'package:flutter/material.dart';
class Mail extends StatefulWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail>with SingleTickerProviderStateMixin {
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
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              //color: Color(0xff2a1705),
              // border: Border.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage("assets/images/infobacktable.png"),
                    fit: BoxFit.fill)
            ),
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(

                    padding: EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 39,bottom: 25),
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
                                  width: MediaQuery.of(context).size.width*0.12,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/freechipsbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Padding(
                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 12),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.0500,
                                          width: MediaQuery.of(context).size.width*0.0400,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage("assets/images/persons3.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Text("Friends",style: TextStyle(color: Colors.amber,fontSize: 12 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  )
                              ),),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width*0.12,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/freechipsbutton.png"),
                                            fit: BoxFit.cover)),
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 12),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.0500,
                                            width: MediaQuery.of(context).size.width*0.0400,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage("assets/images/person4.png"),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Text("Requests",style: TextStyle(color: Colors.amber,fontSize: 12 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    )
                                )
                            ),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.12,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/freechipsbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Padding(
                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 12),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.0500,
                                          width: MediaQuery.of(context).size.width*0.0400,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage("assets/images/persons.png"),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Text("Invite",style: TextStyle(color: Colors.amber,fontSize: 12 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            // RotatedBox(
                            //     quarterTurns: 3,
                            //     child: Container(
                            //       height: MediaQuery.of(context).size.height,
                            //       width: MediaQuery.of(context).size.width*0.12,
                            //       decoration: BoxDecoration(
                            //           image: DecorationImage(
                            //               image: AssetImage("assets/images/freechipsbutton.png"),
                            //               fit: BoxFit.cover)),
                            //       child: Center(child: Text(" ",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                            //     )
                            // ),
                            // RotatedBox(
                            //     quarterTurns: 3,
                            //     child: Container(
                            //       height: MediaQuery.of(context).size.height*0.13,
                            //       width: MediaQuery.of(context).size.width*0.10,
                            //       decoration: BoxDecoration(
                            //           image: DecorationImage(
                            //               image: AssetImage("assets/images/chipsyellowbutton.png"),
                            //               fit: BoxFit.cover)),
                            //       child: Center(child: Text("History",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                            //     )
                            // ),
                          ]),

                    ),
                  ),
                ),
                SizedBox(width:  MediaQuery.of(context).size.width*0.0200,),
                Flexible(
                  child: Padding(
                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 45),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.65,
                      width:  MediaQuery.of(context).size.width*0.71,
                      child: RotatedBox(
                        quarterTurns: 9,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber,width:  MediaQuery.of(context).size.width*0.0025,),
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(image: AssetImage("assets/images/giftmorefriends.png"),fit: BoxFit.fill),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height*0.0300,),
                                    Text("You have no Friends yet! 😔",style: TextStyle(color: Color(0xffefd43c),fontSize:  17 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                                    SizedBox(height: MediaQuery.of(context).size.height*0.46,),
                                    Container(
                                      height: MediaQuery.of(context).size.height*0.0850,
                                      width: MediaQuery.of(context).size.width*0.14,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/giftgreenbutton.png"),fit: BoxFit.fill)
                                      ),
                                      child:  Padding(
                                        padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top + 5,left:  MediaQuery.of(context).viewInsets.left + 20),
                                        child: Text("INVITE",style: TextStyle(color: Color(0xffefd43c),fontSize: 19 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child:  Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/redtable.png"),fit: BoxFit.fill),
                                ),
                                child: Center(child: Text("                      No current requests.\nInvite friends and have more fun in the game.",style: TextStyle(color: Colors.white70,fontSize: 15 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                              ),
                            ),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/invitefriends.png"),fit: BoxFit.fill)
                                ),
                                child: RotatedBox(
                                  quarterTurns: 3,

                                ),
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(image: AssetImage("assets/images/entercouponcode.png"),fit: BoxFit.fill)
                            //   ),
                            //   child: RotatedBox(
                            //     quarterTurns: 3,
                            //     child: Column(
                            //       children: [
                            //         SizedBox( height: MediaQuery.of(context).size.height*0.0550,),
                            //         Container(
                            //           height: MediaQuery.of(context).size.height*0.0850,
                            //           width: MediaQuery.of(context).size.width*0.50,
                            //           decoration: BoxDecoration(
                            //               image: DecorationImage(image: AssetImage("assets/images/entercode.png"),fit: BoxFit.fill)
                            //           ),
                            //           child: Center(child: Text("Enter Promo Code",style: TextStyle(color: Colors.amber,fontSize: 16,fontWeight: FontWeight.bold),)),
                            //         ),
                            //         SizedBox( height: MediaQuery.of(context).size.height*0.0550,),
                            //         Container(
                            //           height: MediaQuery.of(context).size.height*0.40,
                            //           width: MediaQuery.of(context).size.width*0.50,
                            //           decoration: BoxDecoration(
                            //               borderRadius: BorderRadius.circular(10),
                            //               image: DecorationImage(image: AssetImage("assets/images/entercouponcode.png"),fit: BoxFit.fill)
                            //           ),
                            //           child: Center(
                            //             child: Container(
                            //               width: MediaQuery.of(context).size.width*0.45,
                            //               child: TextField(
                            //                 decoration: InputDecoration(
                            //                     hintText: " Enter Promo Code Here:",
                            //                     hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            //                     focusColor: Colors.black
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox( height: MediaQuery.of(context).size.height*0.0750,),
                            //
                            //         Container(
                            //           height: MediaQuery.of(context).size.height*0.11,
                            //           width: MediaQuery.of(context).size.width*0.15,
                            //           decoration: BoxDecoration(
                            //               borderRadius: BorderRadius.circular(10),
                            //               image: DecorationImage(image: AssetImage("assets/images/enterbutton.png"),fit: BoxFit.fill)
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            // RotatedBox(
                            //   quarterTurns: 3,
                            //   child: Column(
                            //     children: [
                            //       Container(
                            //         height: MediaQuery.of(context).size.height*0.10,
                            //         width: MediaQuery.of(context).size.width*0.23,
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(10),
                            //             image: DecorationImage(image: AssetImage("assets/images/history.png"),fit: BoxFit.fill)
                            //         ),
                            //       ),
                            //       Container(
                            //         height: MediaQuery.of(context).size.height*0.0700,
                            //         width: MediaQuery.of(context).size.width*0.25,
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(10),
                            //             image: DecorationImage(image: AssetImage("assets/images/historydeco.png"),fit: BoxFit.fill)
                            //         ),
                            //       ),
                            //       SizedBox( height: MediaQuery.of(context).size.height*0.23,),
                            //       Text("No transactions found",style: TextStyle(color: Colors.amber,fontSize: 14,fontWeight: FontWeight.bold),)
                            //     ],
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.0,
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
