import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:flutter_switch/flutter_switch.dart';

class no_limit_table extends StatefulWidget {
  const no_limit_table({Key? key}) : super(key: key);

  @override
  State<no_limit_table> createState() => _no_limit_tableState();
}

class _no_limit_tableState extends State<no_limit_table> {
  bool isSwitched = false;
  Color _textColor = Colors.green;
  Color _appBarColor = Colors.green;
  bool status = false;
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/table1.jpg"), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                  alignment: Alignment.topLeft,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: double.infinity,
                                        width:  MediaQuery.of(context).size.width*0.26,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/backtable.png"),
                                                fit: BoxFit.fill)),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height:  MediaQuery.of(context).size.height*0.13,
                                                  width:  MediaQuery.of(context).size.width*0.15,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/menutxt.png"),
                                                          fit: BoxFit.fill)
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0250),
                                            InkWell(onTap: (){},
                                              child: Container(
                                                height:  MediaQuery.of(context).size.height*0.12,
                                                width:  MediaQuery.of(context).size.width*0.18,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/button.png"),
                                                        fit: BoxFit.fill)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 17,top: 14),
                                                  child: Text("Switch Table",style: TextStyle(color:Color(0xff590100),fontSize: 16,fontWeight: FontWeight.bold),),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            InkWell(onTap: (){
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context ) {
                                                    return Dialog(
                                                      shape:RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(16),
                                                      ),
                                                      elevation: 0,
                                                      backgroundColor: Colors.transparent,
                                                      child: Stack(
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Container(
                                                            height:  MediaQuery.of(context).size.height*0.85,
                                                            width:  MediaQuery.of(context).size.width*0.78,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage("assets/images/backtable.png",),fit: BoxFit.fill)
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  height:  MediaQuery.of(context).size.height*0.124,
                                                                  width:  MediaQuery.of(context).size.width*0.16,
                                                                  child: Image.asset("assets/images/store.png",fit: BoxFit.fill,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height:  MediaQuery.of(context).size.height*0.60,
                                                                  width:  MediaQuery.of(context).size.width*0.70,
                                                                  child: GridView.builder(
                                                                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                                                        maxCrossAxisExtent: 200,
                                                                        mainAxisSpacing: 20,
                                                                        crossAxisSpacing:20,
                                                                        childAspectRatio: 5/4,
                                                                      ),
                                                                      itemCount: 9,
                                                                      itemBuilder: (BuildContext context, int index){
                                                                        return  Container(
                                                                          height:  MediaQuery.of(context).size.height*0.0400,
                                                                          width:  MediaQuery.of(context).size.width*0.0600,
                                                                          decoration: BoxDecoration(
                                                                              image: DecorationImage(image:AssetImage("assets/images/buybutton.png"),fit: BoxFit.fill)
                                                                          ),
                                                                          child: Column(
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(top: 37.0,left: 7),
                                                                                    child: Image.asset("assets/images/roulette.png",fit: BoxFit.fill,
                                                                                      height:  MediaQuery.of(context).size.height*0.0700,
                                                                                      width:  MediaQuery.of(context).size.width*0.0400,),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(top: 37.0,left: 5),
                                                                                    child: Text("2,40,00,000",style: TextStyle(color: Colors.white,fontSize: 16),),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(left: 75.0),
                                                                                    child: Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                                                                  ),
                                                                                  Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                                                    height:  MediaQuery.of(context).size.height*0.0600,
                                                                                    width:  MediaQuery.of(context).size.width*0.0400,)
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Text("    Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18,fontWeight: FontWeight.bold),)
                                                                                ],
                                                                              )
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Positioned(
                                                            right:552.0,
                                                            top: 46.0,
                                                            child: Container(
                                                              height:  MediaQuery.of(context).size.height*0.35,
                                                              width:  MediaQuery.of(context).size.width*0.0600,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(image: AssetImage("assets/images/storeside.png"),fit: BoxFit.fill)
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            right:547.0,
                                                            top: 162.0,
                                                            child: Container(
                                                              height:  MediaQuery.of(context).size.height*0.29,
                                                              width:  MediaQuery.of(context).size.width*0.0615,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(image: AssetImage("assets/images/storeside2.png"),fit: BoxFit.fill)
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            right:553.0,
                                                            top: 90.0,
                                                            child: Container(
                                                              height:  MediaQuery.of(context).size.height*0.0800,
                                                              width:  MediaQuery.of(context).size.width*0.0500,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill)
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            right:555.0,
                                                            top: 200.0,
                                                            child: Container(
                                                              height:  MediaQuery.of(context).size.height*0.0800,
                                                              width:  MediaQuery.of(context).size.width*0.0500,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill)
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            bottom: 265.0,
                                                            left: 530.0,
                                                            child: InkWell(onTap: (){Navigator.pop(context);},
                                                              child: Container(
                                                                height:  MediaQuery.of(context).size.height*0.0950,
                                                                width:  MediaQuery.of(context).size.width*0.0600,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],

                                                      ),

                                                    );
                                                  }
                                              );
                                            },
                                              child: Container(
                                                height:  MediaQuery.of(context).size.height*0.12,
                                                width:  MediaQuery.of(context).size.width*0.18,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/button.png"),
                                                        fit: BoxFit.fill)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 42,top: 14),
                                                  child: Text("Store",style: TextStyle(color:Color(0xff590100),fontSize: 16,fontWeight: FontWeight.bold),),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            InkWell(onTap: (){
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context ) {
                                                    return Dialog(
                                                        alignment: Alignment.topRight,
                                                        shape:RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(16),
                                                        ),
                                                        elevation: 0,
                                                        backgroundColor: Colors.transparent,
                                                        child: Stack(
                                                          clipBehavior: Clip.none,
                                                          children: [
                                                            Container(
                                                              height:  double.infinity,
                                                              width:  MediaQuery.of(context).size.width*0.29,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          "assets/images/backtable.png"),
                                                                      fit: BoxFit.fill)),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      SizedBox(width: MediaQuery.of(context).size.width*0.0700,),
                                                                      Container(
                                                                          height:  MediaQuery.of(context).size.height*0.0900,
                                                                          width:  MediaQuery.of(context).size.width*0.15,
                                                                          child: Image.asset("assets/images/settingtxt.png",fit: BoxFit.fill,))
                                                                    ],
                                                                  ),
                                                                  SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                                                                  Container(
                                                                    height:  MediaQuery.of(context).size.height*0.14,
                                                                    width:  MediaQuery.of(context).size.width*0.24,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(
                                                                                "assets/images/settbutton.png"),
                                                                            fit: BoxFit.fill)
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                                                                        Container(
                                                                            height:  MediaQuery.of(context).size.height*0.11,
                                                                            width:  MediaQuery.of(context).size.width*0.0800,
                                                                            child: Image.asset("assets/images/person.png",fit: BoxFit.fill,)),
                                                                        Text("  Guest_63",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                                                                  Container(
                                                                    height:  MediaQuery.of(context).size.height*0.19,
                                                                    width:  MediaQuery.of(context).size.width*0.24,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(
                                                                                "assets/images/settbutton.png"),
                                                                            fit: BoxFit.fill)
                                                                    ),
                                                                    child: Column(
                                                                      children: [
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            // FlutterSwitch(
                                                                            //   activeColor: Colors.green,
                                                                            //   width: 100.0,
                                                                            //   height: 30.0,
                                                                            //   valueFontSize: 25.0,
                                                                            //   toggleSize: 45.0,
                                                                            //   value: status,
                                                                            //   borderRadius: 30.0,
                                                                            //   padding: 8.0,
                                                                            //   showOnOff: true,
                                                                            //   onToggle: (val) {
                                                                            //     setState(() {
                                                                            //       status = val;
                                                                            //     });
                                                                            //   },
                                                                            // ),
                                                                            Switch(
                                                                                value: isSwitched,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    isSwitched = value;
                                                                                  });
                                                                                }),
                                                                            Switch(
                                                                                value: isSwitched,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    isSwitched = value;
                                                                                  });
                                                                                }),

                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Text("  Sound",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                                            SizedBox(width: MediaQuery.of(context).size.width*0.0200),
                                                                            Text("Vibration",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                                                                  Container(
                                                                    height:  MediaQuery.of(context).size.height*0.0850,
                                                                    width:  MediaQuery.of(context).size.width*0.15,
                                                                    decoration: BoxDecoration(
                                                                        image: DecorationImage(
                                                                            image: AssetImage(
                                                                                "assets/images/starbutton.png"),
                                                                            fit: BoxFit.fill)),
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.only(top: 7.0,left: 32),
                                                                      child: Text("Rate Us",style: TextStyle(color: Color(0xff49160e),fontSize: 15,fontWeight: FontWeight.bold),),
                                                                    ),
                                                                  ),
                                                                  Column(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Container(
                                                                            height:  MediaQuery.of(context).size.height*0.0880,
                                                                            width:  MediaQuery.of(context).size.width*0.12,
                                                                            decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    image: AssetImage(
                                                                                        "assets/images/fbbutton.png"),
                                                                                    fit: BoxFit.fill)),
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.only(left: 33.0,top: 9),
                                                                              child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            height:  MediaQuery.of(context).size.height*0.0880,
                                                                            width:  MediaQuery.of(context).size.width*0.12,
                                                                            decoration: BoxDecoration(
                                                                                image: DecorationImage(
                                                                                    image: AssetImage(
                                                                                        "assets/images/button.png"),
                                                                                    fit: BoxFit.fill)),
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.only(left: 18.0,top: 8),
                                                                              child: Text("Support",style: TextStyle(color: Color(0xff470004),fontSize: 13,fontWeight: FontWeight.bold),),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                                                                      Container(
                                                                        height:  MediaQuery.of(context).size.height*0.0800,
                                                                        width:  MediaQuery.of(context).size.width*0.12,
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: AssetImage(
                                                                                    "assets/images/about.png"),
                                                                                fit: BoxFit.fill)),

                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Positioned(
                                                              bottom: 260.0,
                                                              left: 180.0,
                                                              child: InkWell(onTap: (){Navigator.pop(context);},
                                                                child: Container(
                                                                  height:  MediaQuery.of(context).size.height*0.0950,
                                                                  width:  MediaQuery.of(context).size.width*0.0600,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],

                                                        )
                                                    );
                                                  }
                                              );
                                            },
                                              child: Container(
                                                height: 45,
                                                width: 125,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/button.png"),
                                                        fit: BoxFit.fill)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 32,top: 14),
                                                  child: Text("Settings",style: TextStyle(color:Color(0xff590100),fontSize: 16,fontWeight: FontWeight.bold),),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));},
                                              child: Container(
                                                height: 45,
                                                width: 125,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/button.png"),
                                                        fit: BoxFit.fill)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 15,top: 14),
                                                  child: Text("Exit to Lobby",style: TextStyle(color:Color(0xff590100),fontSize: 16,fontWeight: FontWeight.bold),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 260.0,
                                        left: 165.0,
                                        child: InkWell(onTap: (){Navigator.pop(context);},
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              );
                            }
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0950,
                        width: MediaQuery.of(context).size.width*0.0650,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/back.png",),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
                              return Dialog(
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/backtable.png"),fit: BoxFit.fill)
                                      ),
                                      child: Row(
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(height: MediaQuery.of(context).size.height*0.20),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18.0),
                                                child: Container(
                                                    height: MediaQuery.of(context).size.height*0.10,
                                                    width: MediaQuery.of(context).size.width*0.25,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/infobutton.png"),
                                                            fit: BoxFit.fill)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text("   Max\n  chaal",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 28.0),
                                                          child: Container(
                                                              height: MediaQuery.of(context).size.height*0.0750,
                                                              width: MediaQuery.of(context).size.width*0.0420,
                                                              child: Image.asset("assets/images/roulette.png",)),
                                                        ),
                                                        Text("   1,28,000",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                      ],
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18.0),
                                                child: Container(
                                                    height: MediaQuery.of(context).size.height*0.10,
                                                    width: MediaQuery.of(context).size.width*0.25,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/infobutton.png"),
                                                            fit: BoxFit.fill)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text("   Max\n   pot",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 25.0),
                                                          child: Container(
                                                              height: MediaQuery.of(context).size.height*0.0750,
                                                              width: MediaQuery.of(context).size.width*0.0420,
                                                              child: Image.asset("assets/images/roulette.png",)),
                                                        ),
                                                        Text("  20,28,000",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                      ],
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18.0),
                                                child: Container(
                                                    height: MediaQuery.of(context).size.height*0.10,
                                                    width: MediaQuery.of(context).size.width*0.25,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/infobutton.png"),
                                                            fit: BoxFit.fill)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text("   Max\n  Blind",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 25.0),
                                                          child: Container(
                                                              height: MediaQuery.of(context).size.height*0.0750,
                                                              width: MediaQuery.of(context).size.width*0.0420,
                                                              child: Image.asset("assets/images/roulette.png",)),
                                                        ),
                                                        Text("   4",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                      ],
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 18.0),
                                                child: Container(
                                                    height: MediaQuery.of(context).size.height*0.10,
                                                    width: MediaQuery.of(context).size.width*0.25,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/infobutton.png"),
                                                            fit: BoxFit.fill)
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text("   Boot\nAmount",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 25.0),
                                                          child: Container(
                                                              height: MediaQuery.of(context).size.height*0.0750,
                                                              width: MediaQuery.of(context).size.width*0.0420,
                                                              child: Image.asset("assets/images/roulette.png",)),
                                                        ),
                                                        Text("   500",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                      ],
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 37.0,left: 10),
                                            child: Container(
                                                height: MediaQuery.of(context).size.height*0.65,
                                                child: VerticalDivider(thickness: 2,color: Color(0xff974a0a),)),
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(height: MediaQuery.of(context).size.height*0.14,),
                                              Text("  HAND RANKING",style: TextStyle(color:Color(0xfffffe02),fontSize: 17,fontWeight: FontWeight.bold),),
                                              Container(
                                                height: MediaQuery.of(context).size.height*0.55,
                                                width: MediaQuery.of(context).size.width*0.55,
                                                child: ListView(
                                                  scrollDirection: Axis.vertical,
                                                  children: <Widget>[
                                                    SizedBox( height: MediaQuery.of(context).size.height*0.0400,),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 150.0,),
                                                          child: Text("1. Trail or Set(three of same rank)",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),


                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 250.0,),
                                                          child: Text("2. Pure Sequence",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 250.0,),
                                                          child: Text("3. Sequence(run)",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 310.0,),
                                                          child: Text("4. Color",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 164.0,),
                                                          child: Text("5. Pair(two cards of same rank",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 280.0,),
                                                          child: Text("6. High Card",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                        ),
                                                        SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height*0.14,
                                                          width: MediaQuery.of(context).size.width*0.60,
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill
                                                              )
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset("assets/images/acered.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/blackace.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/acechidi.png",height: 43,width: 40,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 10.0),
                                                                child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                                              ),

                                                              Image.asset("assets/images/2eat.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2red.png",height: 43,width: 40,),
                                                              Image.asset("assets/images/2black.png",height: 43,width: 40,),
                                                            ],
                                                          ),
                                                        ),

                                                      ],
                                                    )

                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 260.0,
                                      left: 608.0,
                                      child: InkWell(onTap: (){Navigator.pop(context);},
                                        child: Container(
                                          height: MediaQuery.of(context).size.height*0.0950,
                                          width: MediaQuery.of(context).size.width*0.0600,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0960,
                        width: MediaQuery.of(context).size.width*0.0660,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/i2.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
                              return Dialog(
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height:  MediaQuery.of(context).size.height*0.85,
                                      width:  MediaQuery.of(context).size.width*0.78,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/backtable.png",),fit: BoxFit.fill)
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height:  MediaQuery.of(context).size.height*0.124,
                                            width:  MediaQuery.of(context).size.width*0.16,
                                            child: Image.asset("assets/images/store.png",fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            height:  MediaQuery.of(context).size.height*0.60,
                                            width:  MediaQuery.of(context).size.width*0.70,
                                            child: GridView.builder(
                                                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                                  maxCrossAxisExtent: 200,
                                                  mainAxisSpacing: 20,
                                                  crossAxisSpacing:20,
                                                  childAspectRatio: 5/4,
                                                ),
                                                itemCount: 9,
                                                itemBuilder: (BuildContext context, int index){
                                                  return  Container(
                                                    height:  MediaQuery.of(context).size.height*0.0400,
                                                    width:  MediaQuery.of(context).size.width*0.0600,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image:AssetImage("assets/images/buybutton.png"),fit: BoxFit.fill)
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 37.0,left: 7),
                                                              child: Image.asset("assets/images/roulette.png",fit: BoxFit.fill,
                                                                height:  MediaQuery.of(context).size.height*0.0700,
                                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 37.0,left: 5),
                                                              child: Text("2,40,00,000",style: TextStyle(color: Colors.white,fontSize: 16),),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 75.0),
                                                              child: Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                                            ),
                                                            Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                              height:  MediaQuery.of(context).size.height*0.0600,
                                                              width:  MediaQuery.of(context).size.width*0.0400,)
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("    Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18,fontWeight: FontWeight.bold),)
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right:552.0,
                                      top: 46.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.35,
                                        width:  MediaQuery.of(context).size.width*0.0600,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/storeside.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:547.0,
                                      top: 162.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.29,
                                        width:  MediaQuery.of(context).size.width*0.0615,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/storeside2.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:553.0,
                                      top: 90.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.0800,
                                        width:  MediaQuery.of(context).size.width*0.0500,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:555.0,
                                      top: 200.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.0800,
                                        width:  MediaQuery.of(context).size.width*0.0500,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 265.0,
                                      left: 530.0,
                                      child: InkWell(onTap: (){Navigator.pop(context);},
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height*0.0950,
                                          width:  MediaQuery.of(context).size.width*0.0600,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],

                                ),

                              );
                            }
                        );

                      },
                      child: Container(
                        height:  MediaQuery.of(context).size.height*0.17,
                        width:  MediaQuery.of(context).size.width*0.16,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/bottom1.png"),fit: BoxFit.cover)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 20, bottom: 4),
                              child: Container(
                                height:  MediaQuery.of(context).size.height*0.0850,
                                width:  MediaQuery.of(context).size.width*0.0500,
                                child: Image.asset(
                                  "assets/images/roulette.png",fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Text("  BUY", style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
                              return Dialog(
                                  alignment: Alignment.topRight,
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height:  double.infinity,
                                        width:  MediaQuery.of(context).size.width*0.29,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/backtable.png"),
                                                fit: BoxFit.fill)),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(width: MediaQuery.of(context).size.width*0.0700,),
                                                Container(
                                                    height:  MediaQuery.of(context).size.height*0.0900,
                                                    width:  MediaQuery.of(context).size.width*0.15,
                                                    child: Image.asset("assets/images/settingtxt.png",fit: BoxFit.fill,))
                                              ],
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                                            Container(
                                              height:  MediaQuery.of(context).size.height*0.14,
                                              width:  MediaQuery.of(context).size.width*0.24,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/settbutton.png"),
                                                      fit: BoxFit.fill)
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                                                  Container(
                                                      height:  MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.0800,
                                                      child: Image.asset("assets/images/person.png",fit: BoxFit.fill,)),
                                                  Text("  Guest_63",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                                            Container(
                                              height:  MediaQuery.of(context).size.height*0.19,
                                              width:  MediaQuery.of(context).size.width*0.24,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/settbutton.png"),
                                                      fit: BoxFit.fill)
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      // FlutterSwitch(
                                                      //   activeColor: Colors.green,
                                                      //   width: 100.0,
                                                      //   height: 30.0,
                                                      //   valueFontSize: 25.0,
                                                      //   toggleSize: 45.0,
                                                      //   value: status,
                                                      //   borderRadius: 30.0,
                                                      //   padding: 8.0,
                                                      //   showOnOff: true,
                                                      //   onToggle: (val) {
                                                      //     setState(() {
                                                      //       status = val;
                                                      //     });
                                                      //   },
                                                      // ),
                                                      Switch(
                                                          value: isSwitched,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              isSwitched = value;
                                                            });
                                                          }),
                                                      Switch(
                                                          value: isSwitched,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              isSwitched = value;
                                                            });
                                                          }),

                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Text("  Sound",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                                                      SizedBox(width: MediaQuery.of(context).size.width*0.0200),
                                                      Text("Vibration",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                                            Container(
                                              height:  MediaQuery.of(context).size.height*0.0850,
                                              width:  MediaQuery.of(context).size.width*0.15,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/starbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 7.0,left: 32),
                                                child: Text("Rate Us",style: TextStyle(color: Color(0xff49160e),fontSize: 15,fontWeight: FontWeight.bold),),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Container(
                                                      height:  MediaQuery.of(context).size.height*0.0880,
                                                      width:  MediaQuery.of(context).size.width*0.12,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/images/fbbutton.png"),
                                                              fit: BoxFit.fill)),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 33.0,top: 9),
                                                        child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                                                      ),
                                                    ),
                                                    Container(
                                                      height:  MediaQuery.of(context).size.height*0.0880,
                                                      width:  MediaQuery.of(context).size.width*0.12,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/images/button.png"),
                                                              fit: BoxFit.fill)),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 18.0,top: 8),
                                                        child: Text("Support",style: TextStyle(color: Color(0xff470004),fontSize: 13,fontWeight: FontWeight.bold),),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                                                Container(
                                                  height:  MediaQuery.of(context).size.height*0.0800,
                                                  width:  MediaQuery.of(context).size.width*0.12,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/about.png"),
                                                          fit: BoxFit.fill)),

                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 260.0,
                                        left: 180.0,
                                        child: InkWell(onTap: (){Navigator.pop(context);},
                                          child: Container(
                                            height:  MediaQuery.of(context).size.height*0.0950,
                                            width:  MediaQuery.of(context).size.width*0.0600,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],

                                  )
                              );
                            }
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0850,
                        width: MediaQuery.of(context).size.width*0.0600,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/setting.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 85,
              left: 183,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder:
                          (BuildContext context ) {
                        return Dialog(
                            alignment: Alignment.topRight,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*1.0,
                                  width: MediaQuery.of(context).size.width*0.40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 25.0,left: 7),
                                              child: Image.asset("assets/images/person.png",
                                                height: MediaQuery.of(context).size.height*0.17,
                                                width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                                            ),

                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 18.0),
                                                child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                                              ),
                                              SizedBox(height: 1,),
                                              Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13,fontWeight: FontWeight.bold),),
                                              // Row(
                                              //   children: [
                                              //     Image.asset("assets/images/gicon.png",height: 30,width: 30,),
                                              //     Image.asset("assets/images/i3.png",height: 20,width: 20,)
                                              //
                                              //   ],
                                              // ),
                                              Row(
                                                children: [
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Center(child: Text("  Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),)),
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.0750,
                                                    width:  MediaQuery.of(context).size.width*0.0350,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                      Row(
                                        children: [
                                          Text("                    Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(height:1,width:278,child: Divider(color: Colors.white,thickness: 0.5,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.010),
                                      Row(
                                        children: [
                                          Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                                          Container(height:50,width:1,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                                          SizedBox(width: 42,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.15,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.person_add_alt_1,color: Colors.white,),
                                                Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 92.0,bottom: 4),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.0750,
                                              width:  MediaQuery.of(context).size.width*0.0500,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7.0),
                                            child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),

                                    ],
                                  ),

                                ),
                                Positioned(
                                  bottom: 265.0,
                                  left: 260.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  width:  MediaQuery.of(context).size.width*0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/PlayPerson1.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 40),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.14,
                          width:  MediaQuery.of(context).size.width*0.11,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "1,173Cr",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 165,
              left: 183,
              child: Container(
                height: MediaQuery.of(context).size.height*0.0700,
                width:  MediaQuery.of(context).size.width*0.0455,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/roulette.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              top: 85,
              right: 155,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder:
                          (BuildContext context ) {
                        return Dialog(
                            alignment: Alignment.topRight,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*1.0,
                                  width: MediaQuery.of(context).size.width*0.40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 25.0,left: 7),
                                              child: Image.asset("assets/images/person.png",
                                                height: MediaQuery.of(context).size.height*0.17,
                                                width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                                            ),

                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 18.0),
                                                child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                                              ),
                                              SizedBox(height: 1,),
                                              Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13,fontWeight: FontWeight.bold),),
                                              // Row(
                                              //   children: [
                                              //     Image.asset("assets/images/gicon.png",height: 30,width: 30,),
                                              //     Image.asset("assets/images/i3.png",height: 20,width: 20,)
                                              //
                                              //   ],
                                              // ),
                                              Row(
                                                children: [
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Center(child: Text("  Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),)),
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.0750,
                                                    width:  MediaQuery.of(context).size.width*0.0350,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                      Row(
                                        children: [
                                          Text("                    Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(height:1,width:278,child: Divider(color: Colors.white,thickness: 0.5,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.010),
                                      Row(
                                        children: [
                                          Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                                          Container(height:50,width:1,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                                          SizedBox(width: 42,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.15,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.person_add_alt_1,color: Colors.white,),
                                                Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 92.0,bottom: 4),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.0750,
                                              width:  MediaQuery.of(context).size.width*0.0500,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7.0),
                                            child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),

                                    ],
                                  ),

                                ),
                                Positioned(
                                  bottom: 265.0,
                                  left: 260.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  width:  MediaQuery.of(context).size.width*0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/PlayPerson1.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 40),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.14,
                          width:  MediaQuery.of(context).size.width*0.11,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "2.2Cr",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 165,
              right: 247,
              child: Container(
                height: MediaQuery.of(context).size.height*0.0700,
                width:  MediaQuery.of(context).size.width*0.0455,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/roulette.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              top: 160,
              left: 60,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder:
                          (BuildContext context ) {
                        return Dialog(
                            alignment: Alignment.topRight,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*1.0,
                                  width: MediaQuery.of(context).size.width*0.40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 25.0,left: 7),
                                              child: Image.asset("assets/images/person.png",
                                                height: MediaQuery.of(context).size.height*0.17,
                                                width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                                            ),

                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 18.0),
                                                child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                                              ),
                                              SizedBox(height: 1,),
                                              Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13,fontWeight: FontWeight.bold),),
                                              // Row(
                                              //   children: [
                                              //     Image.asset("assets/images/gicon.png",height: 30,width: 30,),
                                              //     Image.asset("assets/images/i3.png",height: 20,width: 20,)
                                              //
                                              //   ],
                                              // ),
                                              Row(
                                                children: [
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Center(child: Text("  Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),)),
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.0750,
                                                    width:  MediaQuery.of(context).size.width*0.0350,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                      Row(
                                        children: [
                                          Text("                    Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(height:1,width:278,child: Divider(color: Colors.white,thickness: 0.5,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.010),
                                      Row(
                                        children: [
                                          Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                                          Container(height:50,width:1,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                                          SizedBox(width: 42,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.15,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.person_add_alt_1,color: Colors.white,),
                                                Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 92.0,bottom: 4),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.0750,
                                              width:  MediaQuery.of(context).size.width*0.0500,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7.0),
                                            child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),

                                    ],
                                  ),

                                ),
                                Positioned(
                                  bottom: 265.0,
                                  left: 260.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  width:  MediaQuery.of(context).size.width*0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/PlayPerson1.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 40),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.14,
                          width:  MediaQuery.of(context).size.width*0.11,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "5,86,647",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 60,
              child: Container(
                height: MediaQuery.of(context).size.height*0.0700,
                width:  MediaQuery.of(context).size.width*0.0455,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/roulette.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              top: 162,
              right: 40,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder:
                          (BuildContext context ) {
                        return Dialog(
                            alignment: Alignment.topRight,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*1.0,
                                  width: MediaQuery.of(context).size.width*0.40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 25.0,left: 7),
                                              child: Image.asset("assets/images/person.png",
                                                height: MediaQuery.of(context).size.height*0.17,
                                                width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                                            ),

                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 18.0),
                                                child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                                              ),
                                              SizedBox(height: 1,),
                                              Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13,fontWeight: FontWeight.bold),),
                                              // Row(
                                              //   children: [
                                              //     Image.asset("assets/images/gicon.png",height: 30,width: 30,),
                                              //     Image.asset("assets/images/i3.png",height: 20,width: 20,)
                                              //
                                              //   ],
                                              // ),
                                              Row(
                                                children: [
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Center(child: Text("  Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),)),
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.0750,
                                                    width:  MediaQuery.of(context).size.width*0.0350,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                      Row(
                                        children: [
                                          Text("                    Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(height:1,width:278,child: Divider(color: Colors.white,thickness: 0.5,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.010),
                                      Row(
                                        children: [
                                          Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                                          Container(height:50,width:1,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                                          SizedBox(width: 42,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.15,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.person_add_alt_1,color: Colors.white,),
                                                Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 92.0,bottom: 4),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.0750,
                                              width:  MediaQuery.of(context).size.width*0.0500,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7.0),
                                            child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),

                                    ],
                                  ),

                                ),
                                Positioned(
                                  bottom: 265.0,
                                  left: 260.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  width:  MediaQuery.of(context).size.width*0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/PlayPerson1.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 40),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.14,
                          width:  MediaQuery.of(context).size.width*0.11,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "21.3L",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 242,
              right: 132,
              child: Container(
                height: MediaQuery.of(context).size.height*0.0700,
                width:  MediaQuery.of(context).size.width*0.0455,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/roulette.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              top: 205,
              right: 331,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder:
                          (BuildContext context ) {
                        return Dialog(
                            alignment: Alignment.topRight,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*1.0,
                                  width: MediaQuery.of(context).size.width*0.40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 25.0,left: 7),
                                              child: Image.asset("assets/images/person.png",
                                                height: MediaQuery.of(context).size.height*0.17,
                                                width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                                            ),

                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 18.0),
                                                child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17,fontWeight: FontWeight.bold),),
                                              ),
                                              SizedBox(height: 1,),
                                              Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13,fontWeight: FontWeight.bold),),
                                              // Row(
                                              //   children: [
                                              //     Image.asset("assets/images/gicon.png",height: 30,width: 30,),
                                              //     Image.asset("assets/images/i3.png",height: 20,width: 20,)
                                              //
                                              //   ],
                                              // ),
                                              Row(
                                                children: [
                                                  Container(
                                                      height: MediaQuery.of(context).size.height*0.11,
                                                      width:  MediaQuery.of(context).size.width*0.15,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Center(child: Text("  Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),)),
                                                        ],
                                                      )
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.0750,
                                                    width:  MediaQuery.of(context).size.width*0.0350,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                                      Row(
                                        children: [
                                          Text("                    Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      Container(height:1,width:278,child: Divider(color: Colors.white,thickness: 0.5,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.010),
                                      Row(
                                        children: [
                                          Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                                          Container(height:50,width:1,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                                          SizedBox(width: 42,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.15,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.person_add_alt_1,color: Colors.white,),
                                                Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 92.0,bottom: 4),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.0750,
                                              width:  MediaQuery.of(context).size.width*0.0500,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7.0),
                                            child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                        ],
                                      ),

                                    ],
                                  ),

                                ),
                                Positioned(
                                  bottom: 265.0,
                                  left: 260.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  width:  MediaQuery.of(context).size.width*0.17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/PlayPerson1.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 40),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.14,
                          width:  MediaQuery.of(context).size.width*0.11,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/person.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "6,65,400",
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 285,
              left: 261,
              child: Container(
                height: MediaQuery.of(context).size.height*0.0700,
                width:  MediaQuery.of(context).size.width*0.0455,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/roulette.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 94,
              child: Container(
                height: MediaQuery.of(context).size.height*0.14,
                width:  MediaQuery.of(context).size.width*0.99,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/playbottombar.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 7),
                          child: Text(
                            "Max Blind",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 5),
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130, top: 5),
                          child: Text(
                            "Boot Amount",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 5),
                          child: Text(
                            "500",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60, top: 0),
                          child: Text(
                            "Max Chaal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 0),
                          child: Text(
                            "1,28,000",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 72, top: 0),
                          child: Text(
                            "Max Pot",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 0),
                          child: Text(
                            "20,48,000",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 42, bottom: 8),
                          child: Text(
                            "Please wait for next game",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 311,
              left: 25,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height*0.11,
                  width:  MediaQuery.of(context).size.width*0.0600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/nocomment.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Positioned(
              top: 311,
              left: 75,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            alignment: Alignment.topLeft,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: double.infinity,
                                  width:  MediaQuery.of(context).size.width*0.35,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/backtable.png"),
                                          fit: BoxFit.fill)),
                                  child: Column(
                                    children: [
                                      Container(
                                          height: MediaQuery.of(context).size.height*0.12,
                                          width:  MediaQuery.of(context).size.width*0.13,
                                          child: Image.asset("assets/images/chattxt.png",fit: BoxFit.fill,)),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0150,),
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.17,
                                        width:  MediaQuery.of(context).size.width*0.40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/browntxtfield.png"),
                                                fit: BoxFit.fill)),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 42.0,top: 10),
                                                  child: Text("Type here",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 73.0,top: 7),
                                                  child: Container(
                                                      height: MediaQuery.of(context).size.height*0.13,
                                                      width:  MediaQuery.of(context).size.width*0.0750,
                                                      child: Image.asset("assets/images/Farrow.png",fit: BoxFit.fill,)),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.40,
                                        width:  MediaQuery.of(context).size.width*0.40,
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("Please play blind",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("Please play fast",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("That's how to win it",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("I love Ultimate Teenpatti",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("That's a big pot!",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("I am unlucky!",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("Well Played!",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                            Container(
                                              height: MediaQuery.of(context).size.height*0.11,
                                              width:  MediaQuery.of(context).size.width*0.0,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/greenbutton.png"),
                                                      fit: BoxFit.fill)),
                                              child: Center(child: Text("Better luck next time!",style: TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 260.0,
                                  left: 227.0,
                                  child: InkWell(onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*0.0950,
                                      width:  MediaQuery.of(context).size.width*0.0600,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        );
                      }
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width:  MediaQuery.of(context).size.width*0.0700,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/comment.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
