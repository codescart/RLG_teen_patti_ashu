import 'package:flutter/material.dart';
class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
            height: MediaQuery.of(context).size.height*0.99,
            width:  MediaQuery.of(context).size.width*0.99,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/infobacktable.png"),
                    fit: BoxFit.fill)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 38),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0870,
                        width: MediaQuery.of(context).size.width*0.40,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/ultimateclubtxt.png"),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 18,right: MediaQuery.of(context).viewInsets.right + 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.0950,
                        width:  MediaQuery.of(context).size.width*0.26,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/bluebutton.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0850,
                          width:  MediaQuery.of(context).size.width*0.24,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/earnpointtxt.png"),
                                  fit: BoxFit.fill)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0300,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.0555,),
                    Container(
                        height: MediaQuery.of(context).size.height*0.14,
                        width:  MediaQuery.of(context).size.width*0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/yellowbutton.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                            Text("YOUR",style: TextStyle(color: Color(0xff583c00),fontSize: 15* MediaQuery.textScaleFactorOf(context),),),
                            Text("BENEFITS",style: TextStyle(color: Color(0xff583c00),fontSize: 17* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                          ],
                        )
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/greenbox1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/gicon.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Bronze",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/brownbox.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/wicon.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Silver",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/brownbox.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/goldicon.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Gold",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/brownbox.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/dicon.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Diamond",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/brownbox.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/ricon.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Platinum",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.14,
                      width:  MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/brownbox.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.0830,
                            width:  MediaQuery.of(context).size.width*0.0620,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/crown.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Text("Royal",style: TextStyle(color: Colors.white,fontSize:13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.0555,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.12,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Welcome\n   Bonus",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("1.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("25",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("3.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("75",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("6.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("150",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("12.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("300",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("20.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.1100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11,bottom: MediaQuery.of(context).viewInsets.bottom + 4),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/roulette.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("50.0L",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 11),
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.0450,
                                  width:  MediaQuery.of(context).size.width*0.0300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/hammer.png"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                                Text("1000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.0555,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.12,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Free Chip\n   Bonus",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),

                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.0555,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.12,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Referral\n  Bonus",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.0x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.1x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.2X",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.3x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.4x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.5x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),

                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.0555,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width:  MediaQuery.of(context).size.width*0.12,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infobrown.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Best win\n  Bonus",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("0.25x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("0.4x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("0.7x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.1x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("1.5x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height*0.11,
                        width:  MediaQuery.of(context).size.width*0.1100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/infobrown1.png"),
                                fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("2.0x",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                    ),

                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom:  MediaQuery.of(context).size.width*0.37,
            left:  MediaQuery.of(context).size.width*0.85,
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
