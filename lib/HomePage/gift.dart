import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/freechips.dart';
class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/giftbacktable.png"),fit: BoxFit.fill)
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.010,
            left: MediaQuery.of(context).size.width * 0.010,
            child: InkWell(onTap: (){Navigator.pop(context);},
              child: Container(
                height: MediaQuery.of(context).size.height*0.77,
                width: MediaQuery.of(context).size.width*0.34,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/gifttable.png"),fit: BoxFit.fill)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/gift.png",
                              height:  MediaQuery.of(context).size.height*0.0980,
                              width:  MediaQuery.of(context).size.width*0.0700,),
                            Text("Collect",style: TextStyle(color: Colors.white,fontSize: 16* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w400),),
                            Text(" 3 Cards ",style: TextStyle(color: Color(0xffe2d217),fontSize: 16* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                            Text("of Clubs",style: TextStyle(color: Colors.white,fontSize: 16* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w400),),

                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Text("               Get",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
                        //     Image.asset("assets/images/gift.png",height: 50,width: 55,),
                        //     Text("50,000",style: TextStyle(color: Color(0xfff6cc1d),fontSize: 22,fontWeight: FontWeight.bold),),
                        //
                        //   ],
                        // ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.35,),
                        Container(
                          height:  MediaQuery.of(context).size.height*0.15,
                          width:  MediaQuery.of(context).size.width*0.32,
                          child: Image.asset("assets/images/cardplat.png",
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                        Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.width*0.26,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/giftgreenbutton.png"),fit: BoxFit.fill)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/roulette.png",
                                height:  MediaQuery.of(context).size.height*0.0900,
                                width:  MediaQuery.of(context).size.width*0.0550,),
                              Text("Claim Reward",style: TextStyle(color: Colors.amber,fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ) ,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top:  MediaQuery.of(context).size.width*0.0010,
            left:  MediaQuery.of(context).size.width*0.37,
            child: InkWell(onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.78,
                width: MediaQuery.of(context).size.width*0.51,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/giftmorefriends.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.width*0.017,
              left: MediaQuery.of(context).size.width*0.47,
              child: Text("You have no Friends yet! 😔",style: TextStyle(color: Color(0xffefd43c),fontSize: 17,fontWeight: FontWeight.bold),)),
          Positioned(
            top:  MediaQuery.of(context).size.width*0.11,
            left:  MediaQuery.of(context).size.width*0.0999,
            child: InkWell(onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.30,
                width: MediaQuery.of(context).size.width*0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width*0.010,
            left: MediaQuery.of(context).size.width*0.54,
            child: InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Free_chips()));},
              child: Container(
                height: MediaQuery.of(context).size.height*0.10,
                width: MediaQuery.of(context).size.width*0.18,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/giftgreenbutton.png"),fit: BoxFit.fill)
                ),),
            ),),
          Positioned(
              bottom: MediaQuery.of(context).size.width*0.018,
              left: MediaQuery.of(context).size.width*0.59,
              child: Text("INVITE",style: TextStyle(color: Color(0xffefd43c),fontSize: 19,fontWeight: FontWeight.bold),)),
          Positioned(
            top:  MediaQuery.of(context).size.width*0.0,
            left:  MediaQuery.of(context).size.width*0.83,
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
}
