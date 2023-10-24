import 'package:flutter/material.dart';
class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width*0.65,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/backtable.png"),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.10,
                    width: MediaQuery.of(context).size.width*0.19,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/rateustxt.png"),fit: BoxFit.fill)
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0400),
                  Text("Love Ultimate Teen Patti ? Tap on stars to Rate us!",style: TextStyle(color: Color(0xffd67f14),fontSize: 14* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0400),
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width*0.0400,),
                      Text("               Excellent      ",style: TextStyle(color: Color(0xffeabf10),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width*0.0400,),
                      Text("             Very Good      ",style: TextStyle(color: Color(0xffeabf10),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width*0.0400,),
                      Text("                      Good      ",style: TextStyle(color: Color(0xffeabf10),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width*0.0400,),
                      Text("                          OK      ",style: TextStyle(color: Color(0xffeabf10),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width*0.0400,),
                      Text("                 Not Bad      ",style: TextStyle(color: Color(0xffeabf10),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      Container(
                        height: MediaQuery.of(context).size.height*0.0700,
                        width: MediaQuery.of(context).size.width*0.0400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/starrate.png"),fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0250,),
                  InkWell(onTap: (){Navigator.pop(context);},
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width: MediaQuery.of(context).size.width*0.14,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/button.png"),fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Submit",style: TextStyle(color:Color(0xff6c1e08),fontSize: 18* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                    ),
                  ),

                ],
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.width*0.0,
                left: MediaQuery.of(context).size.width*0.59,
                child: InkWell(onTap: (){Navigator.pop(context);},
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.0950,
                    width: MediaQuery.of(context).size.width*0.0600,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                    ),
                  ),
                )
            )

          ],

        )
    );
  }
}
