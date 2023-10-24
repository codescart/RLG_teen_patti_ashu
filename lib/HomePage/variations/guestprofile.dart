import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/friends.dart';
class Guest_Profile extends StatefulWidget {
  const Guest_Profile({Key? key}) : super(key: key);

  @override
  State<Guest_Profile> createState() => _Guest_ProfileState();
}

class _Guest_ProfileState extends State<Guest_Profile> {
  @override
  Widget build(BuildContext context) {
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
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 25,left: MediaQuery.of(context).viewInsets.left + 7),
                          child: Image.asset("assets/images/person1.png",
                            height: MediaQuery.of(context).size.height*0.17,
                            width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                        ),

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 18),
                            child: Text("    Guest_63",style: TextStyle(color: Colors.amber,fontSize: 17 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                          Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
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
                                      Center(child: Text("   Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15 * MediaQuery.textScaleFactorOf(context)),)),
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
                  Container(height:MediaQuery.of(context).size.height*0.011,width:MediaQuery.of(context).size.width*0.40,child: Divider(color: Colors.white,thickness: 0.5,)),
                  SizedBox(height: MediaQuery.of(context).size.height*0.010),
                  Row(
                    children: [
                      Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                      Container(height:MediaQuery.of(context).size.height*0.13,width:MediaQuery.of(context).size.width*0.012,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0500,),
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Friends()));},
                        child: Container(
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
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 92,bottom:  MediaQuery.of(context).viewInsets.bottom + 4),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0750,
                          width:  MediaQuery.of(context).size.width*0.0500,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom:  MediaQuery.of(context).viewInsets.bottom + 7),
                        child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),

                ],
              ),

            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.37,
              left: MediaQuery.of(context).size.width*0.36,
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
}
