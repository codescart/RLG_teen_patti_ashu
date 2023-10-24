import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/store.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/HomePage/setting.dart';
class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
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
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +17,top: MediaQuery.of(context).viewInsets.top +14),
                        child: Text("Switch Table",style: TextStyle(color:Color(0xff590100),fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0250,),
                  InkWell(onTap: (){
                    showDialog(
                        context: context,
                        builder:
                            (BuildContext context )=>Store()
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
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +42,top: MediaQuery.of(context).viewInsets.top +14),
                        child: Text("Store",style: TextStyle(color:Color(0xff590100),fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0250,),
                  InkWell(onTap: (){
                    showDialog(
                        context: context,
                        builder:
                            (BuildContext context )=>Setting()
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
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +32,top: MediaQuery.of(context).viewInsets.top +14),
                        child: Text("Settings",style: TextStyle(color:Color(0xff590100),fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  SizedBox(height:  MediaQuery.of(context).size.height*0.0250,),
                  InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));},
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
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +15,top: MediaQuery.of(context).viewInsets.top +14),
                        child: Text("Exit to Lobby",style: TextStyle(color:Color(0xff590100),fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.37,
              left: MediaQuery.of(context).size.width*0.23,
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
}
