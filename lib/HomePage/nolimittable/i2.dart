import 'package:flutter/material.dart';
class i2 extends StatefulWidget {
  const i2({Key? key}) : super(key: key);

  @override
  State<i2> createState() => _i2State();
}

class _i2State extends State<i2> {
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
                      padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 18.0),
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
                              Text("   Max\n  chaal",style: TextStyle(color: Colors.white,fontSize: 10 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                              Padding(
                                padding: EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 28.0),
                                child: Container(
                                    height: MediaQuery.of(context).size.height*0.0750,
                                    width: MediaQuery.of(context).size.width*0.0420,
                                    child: Image.asset("assets/images/roulette.png",)),
                              ),
                              Text("   1,28,000",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                    Padding(
                      padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 18.0),
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
                              Text("   Max\n   pot",style: TextStyle(color: Colors.white,fontSize: 10 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                              Padding(
                                padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 25.0),
                                child: Container(
                                    height: MediaQuery.of(context).size.height*0.0750,
                                    width: MediaQuery.of(context).size.width*0.0420,
                                    child: Image.asset("assets/images/roulette.png",)),
                              ),
                              Text("  20,28,000",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                    Padding(
                      padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.top + 18.0),
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
                              Text("   Max\n  Blind",style: TextStyle(color: Colors.white,fontSize: 10 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                              Padding(
                                padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.top + 25.0),
                                child: Container(
                                    height: MediaQuery.of(context).size.height*0.0750,
                                    width: MediaQuery.of(context).size.width*0.0420,
                                    child: Image.asset("assets/images/roulette.png",)),
                              ),
                              Text("   4",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0300),
                    Padding(
                      padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.top + 18.0),
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
                              Text("   Boot\nAmount",style: TextStyle(color: Colors.white,fontSize: 10 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                              Padding(
                                padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.top + 25.0),
                                child: Container(
                                    height: MediaQuery.of(context).size.height*0.0750,
                                    width: MediaQuery.of(context).size.width*0.0420,
                                    child: Image.asset("assets/images/roulette.png",)),
                              ),
                              Text("   500",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top + 37.0,left:  MediaQuery.of(context).viewInsets.left + 10),
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.65,
                      child: VerticalDivider(thickness: 2,color: Color(0xff974a0a),)),
                ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.14,),
                    Text("  HAND RANKING",style: TextStyle(color:Color(0xfffffe02),fontSize: 17 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 150.0,),
                                child: Text("1. Trail or Set(three of same rank)",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
                                  ],
                                ),
                              ),


                              Padding(
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 250.0,),
                                child: Text("2. Pure Sequence",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 250.0,),
                                child: Text("3. Sequence(run)",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 310.0,),
                                child: Text("4. Color",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 164.0,),
                                child: Text("5. Pair(two cards of same rank",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 280.0,),
                                child: Text("6. High Card",style: TextStyle(color: Colors.white,fontSize: 14 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                    Image.asset("assets/images/acered.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/blackace.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/acechidi.png",height: MediaQuery.of(context).size.height*0.12,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top +10.0),
                                      child: Text(" _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style: TextStyle(color: Colors.white),),
                                    ),

                                    Image.asset("assets/images/2eat.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2red.png",height: MediaQuery.of(context).size.height*0.12,),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.010,),
                                    Image.asset("assets/images/2black.png",height: MediaQuery.of(context).size.height*0.12,),
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
            bottom: MediaQuery.of(context).size.width*0.37,
            left: MediaQuery.of(context).size.width*0.85,
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
}
