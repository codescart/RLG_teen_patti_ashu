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
                color: Color(0xff2a1705),
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
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    // decoration: BoxDecoration(
                    //     color: Color(0xff2a1705),
                    //    // border: Border.all(color: Colors.amber, width: 2),
                    //     borderRadius: BorderRadius.circular(10),
                    //     image: DecorationImage(
                    //         image: AssetImage("assets/images/infobacktable.png"),
                    //         fit: BoxFit.fill)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                          controller: _tabController,
                          //labelColor: Colors.black,
                         // unselectedLabelColor: Colors.grey,
                          isScrollable: false,
                          indicatorColor: Colors.transparent,
                          tabs: [
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width*0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/chipsyellowbutton.png"),
                                            fit: BoxFit.cover)),
                                    child: Center(child: Text("Promo Code",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                                )
                            ),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(child: Text("Add Chips",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                                )
                            ),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(child: Text("Gift Chips",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                                )
                            ),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(child: Text("Redeem",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                                )
                            ),
                            RotatedBox(
                                quarterTurns: 3,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/chipsyellowbutton.png"),
                                          fit: BoxFit.cover)),
                                  child: Center(child: Text("History",style: TextStyle(color: Color(0xff552e00),fontSize: 16,fontWeight: FontWeight.bold),)),
                                )
                            ),
                          ]),
                    ),
                  ),
                ),
                Container(
                    height:305,
                  child: VerticalDivider(width: 8,thickness:2,color: Colors.amber,)),
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.85,
                    width: double.maxFinite,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                         Container(
                           decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/images/infobacktable.png"),fit: BoxFit.fill)
                           ),
                           child: RotatedBox(
                             quarterTurns: 6,
                             child: Column(
                               children: [
                                 Container(
                                   height: MediaQuery.of(context).size.height*0.13,
                                   width: MediaQuery.of(context).size.width*0.35,
                                   decoration: BoxDecoration(
                                       image: DecorationImage(image: AssetImage("assets/images/entercode.png"),fit: BoxFit.fill)
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                          Text("Bye"),
                          Text("Bye"),
                          Text("Bye"),
                          Text("Bye"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            // Row(
            //   children: [
            //     Container(
            //       height: 100,
            //       width: 100,
            //       decoration: BoxDecoration(
            //           color: Color(0xff2a1705),
            //           border: Border.all(color: Colors.amber,width: 2),
            //           borderRadius: BorderRadius.circular(10),
            //           image: DecorationImage(image: AssetImage("assets/images/infobacktable.png"),fit: BoxFit.fill)
            //       ),
            //       child:  RotatedBox(
            //         quarterTurns: 9,
            //         child: DefaultTabController(
            //           length: 5,
            //           child: new TabBar(
            //             controller: _tabController,
            //             tabs:[
            //               Tab(
            //                 icon: Container(
            //                   height: MediaQuery.of(context).size.height,
            //                   width: MediaQuery.of(context).size.width,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
            //                   ),
            //                   child: Center(child: Text("Promo Code",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),
            //
            //                 ),
            //               ),
            //               Tab(
            //                 icon: Container(
            //                   height: MediaQuery.of(context).size.height,
            //                   width: MediaQuery.of(context).size.width*0.15,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
            //                   ),
            //                   child: Center(child: Text("Add chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),
            //
            //                 ),
            //               ),
            //               Tab(
            //                 icon: Container(
            //                   height: MediaQuery.of(context).size.height,
            //                   width: MediaQuery.of(context).size.width*0.15,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
            //                   ),
            //                   child: Center(child: Text("Gift Chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),
            //
            //                 ),
            //               ),
            //               Tab(
            //                 icon: Container(
            //                   height: MediaQuery.of(context).size.height,
            //                   width: MediaQuery.of(context).size.width*0.15,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
            //                   ),
            //                   child: Center(child: Text("Redeem",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),
            //
            //                 ),
            //               ),
            //               Tab(
            //                 icon: Container(
            //                   height: MediaQuery.of(context).size.height,
            //                   width: MediaQuery.of(context).size.width*0.15,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
            //                   ),
            //                   child: Center(child: Text("History",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),
            //
            //                 ),
            //               ),
            //             ],
            //             labelColor: Colors.blue,
            //             unselectedLabelColor: Colors.grey,
            //           ),
            //         ),
            //       ),
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       child: RotatedBox(
            //         quarterTurns: 9,
            //         child: TabBarView(
            //             controller: _tabController,
            //             children: <Widget>[
            //               Container(
            //                 height: MediaQuery.of(context).size.height*0.10,
            //                 width: MediaQuery.of(context).size.width*0.15,
            //                 color: Colors.white,
            //               ),
            //               Container(
            //                 height: MediaQuery.of(context).size.height*0.10,
            //                 width: MediaQuery.of(context).size.width*0.15,
            //                 color: Colors.black,
            //               ),
            //               Container(
            //                 height: MediaQuery.of(context).size.height*0.10,
            //                 width: MediaQuery.of(context).size.width*0.15,
            //                 color: Colors.blue,
            //               ),
            //               Container(
            //                 height: MediaQuery.of(context).size.height*0.10,
            //                 width: MediaQuery.of(context).size.width*0.15,
            //                 color: Colors.pink,
            //               ),
            //               Container(
            //                 height: MediaQuery.of(context).size.height*0.10,
            //                 width: MediaQuery.of(context).size.width*0.15,
            //                 color: Colors.yellow,
            //               ),
            //             ]
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
          Positioned(
            bottom: 279.0,
            left: 594.0,
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
