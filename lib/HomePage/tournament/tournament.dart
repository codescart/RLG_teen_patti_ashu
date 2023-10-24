import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/NoLimitTable/nolimittable.dart';
import 'package:ultimate_teen_patti/HomePage/NoLimitTable/store.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/comment.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/guestprofile.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/playnow.dart';
import 'package:ultimate_teen_patti/HomePage/chipsbank/chipsbank.dart';
import 'package:ultimate_teen_patti/HomePage/gift.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/HomePage/privatetable/privatetable.dart';
import 'package:ultimate_teen_patti/HomePage/tournament/history.dart';
import 'package:ultimate_teen_patti/HomePage/tournament/questionmark.dart';
class Tournament extends StatefulWidget {
  const Tournament({Key? key}) : super(key: key);

  @override
  State<Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<Tournament> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Coming Soon.gif"),
                  fit: BoxFit.fill
              ),
            ),
            // child: Column(
            //   children: [
            //     Row(
            //       children: [
            //         InkWell(
            //           onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));},
            //           child: Container(
            //             height: MediaQuery.of(context).size.height*0.12,
            //             width:  MediaQuery.of(context).size.width*0.080,
            //             decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     image: AssetImage("assets/images/back.png"),
            //                     fit: BoxFit.fill)),
            //           ),
            //         ),
            //         SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            //         InkWell(
            //           onTap: (){
            //             showDialog(
            //                 context: context,
            //                 builder:
            //                     (BuildContext context )=>Store()
            //             );
            //           },
            //           child: Container(
            //             height: MediaQuery.of(context).size.height*0.12,
            //             width:  MediaQuery.of(context).size.width*0.170,
            //             decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     image: AssetImage("assets/images/tourbutton.png"),
            //                     fit: BoxFit.fill)),
            //             child: Center(child: Text("14.3L",style: TextStyle(color: Colors.white,fontSize: 16* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
            //           ),
            //         ),
            //         SizedBox(width: MediaQuery.of(context).size.width*0.10,),
            //         Container(
            //           height: MediaQuery.of(context).size.height*0.25,
            //           width:  MediaQuery.of(context).size.width*0.270,
            //           decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image: AssetImage("assets/images/tournamenttext.png"),
            //                   fit: BoxFit.fill)),
            //         ),
            //         SizedBox(width: MediaQuery.of(context).size.width*0.11,),
            //         InkWell(
            //           onTap: (){
            //             showDialog(
            //                 context: context,
            //                 builder:
            //                     (BuildContext context ) =>Question_mark()
            //             );
            //           },
            //           child: Container(
            //             height: MediaQuery.of(context).size.height*0.10,
            //             width:  MediaQuery.of(context).size.width*0.060,
            //             decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     image: AssetImage("assets/images/quesmark.png"),
            //                     fit: BoxFit.fill)),
            //           ),
            //         ),
            //         SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            //         InkWell(
            //           onTap: (){
            //             showDialog(
            //                 context: context,
            //                 builder:
            //                     (BuildContext context ) =>History()
            //             );
            //           },
            //           child: Container(
            //             height: MediaQuery.of(context).size.height*0.28,
            //             width:  MediaQuery.of(context).size.width*0.160,
            //             decoration: BoxDecoration(
            //                 image: DecorationImage(
            //                     image: AssetImage("assets/images/bottom1.png"),
            //                     fit: BoxFit.fill)),
            //             child: Center(child: Text("HISTORY",style: TextStyle(color: Color(0xfff5b506),fontWeight: FontWeight.bold,fontSize: 16* MediaQuery.textScaleFactorOf(context)),)),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(height: MediaQuery.of(context).size.height*0.20),
            //     Text("More Tournaments Coming Soon!",style: TextStyle(color: Colors.orange,fontSize: 17+MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
            //   ],
            // ),
          ),
          Positioned(
            left: 5,
              top: 30,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/back.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}

