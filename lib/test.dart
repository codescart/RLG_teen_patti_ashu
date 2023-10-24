// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/backbutton.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/comment.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/guestprofile.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/i2.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/store.dart';
// import 'package:ultimate_teen_patti/HomePage/homePage.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:ultimate_teen_patti/HomePage/setting.dart';
// import 'package:http/http.dart' as http;
// import 'package:ultimate_teen_patti/Slidetransdep/add_to_cart_animation.dart';
// import 'package:ultimate_teen_patti/UserPlayTransition.dart';
// import 'package:ultimate_teen_patti/card.dart';
// import 'package:ultimate_teen_patti/transation/liquid/src/liquid_linear_progress_indicator.dart';
// import 'package:ultimate_teen_patti/transation/user_animation.dart';
// import 'package:ultimate_teen_patti/transation/userborer.dart';
//
//
//
// class ClockModel {
//
//   late int hour;
//   late int minute;
//   late int second;
//   late bool is24HourFormat;
//
//   get is24HourTimeFormat => this.is24HourFormat;
// }
//
//
// class Play_Now extends StatefulWidget {
//   const Play_Now({Key? key}) : super(key: key);
//
//   @override
//   State<Play_Now> createState() => _Play_NowState();
// }
//
// class _Play_NowState extends State<Play_Now> {
//   bool isSwitched = false;
//   Color _textColor = Colors.green;
//   Color _appBarColor = Colors.green;
//   bool status = false;
//   bool isSwitchOn = false;
//   double chalpercent=0.0;
//   bool chalani=false;
//   int sseond=0;
//   @override
//   void initState() {
//     tablecreate();
//     _dateTime = DateTime.now().toUtc();
//     _clockModel = ClockModel();
//     _clockModel.is24HourFormat =  true;
//
//     _dateTime = DateTime.now().toUtc();
//     _clockModel.hour = _dateTime.hour;
//     _clockModel.minute = _dateTime.minute;
//     _clockModel.second = _dateTime.second;
//
//     print('ttttttttttttttttttttttt');
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       final sond=sseond++;
//       _dateTime = DateTime.now().toUtc();
//       _clockModel.hour = _dateTime.hour;
//       _clockModel.minute = _dateTime.minute;
//       _clockModel.second = _dateTime.second;
//       curplay();
//       lastpos();
//       refreshcreate();
//       nextpos();
//       chaalamount();
//       mysliedeshow();
//       opposliedeshow();
//
//       final ond=_clockModel.second;
//       double a = sond/12;
//       double b = double.parse(a.toStringAsFixed(1));
//       setState(() {
//         sseond++;
//
//         chalpercent=b;
//       });
// // if(turn=='1' && sseond==12){
// //   packapi();
// // }
//     });
//
//     super.initState();
//
//   }
//
//
//   late DateTime _dateTime;
//   late ClockModel _clockModel;
//   late Timer _timer;
//
//
//   var pos;
//   var players;
//   var player1;
//   var postion=0;
//   var player2;
//   var player3;
//   var player4;
//   var player5;
//   var table='1';
//   int useid=25;
//   int gid=2;
//   var carddata;
//   var refdata;
//   String lastindex='';
//   String nextposition='';
//   String lastposition='';
//   String nextindex='';
//   String currentplay='';
//   var keyl;
//   GlobalKey<CartIconKey> cartKey1 = GlobalKey<CartIconKey>();
//   GlobalKey<CartIconKey> cartKey2 = GlobalKey<CartIconKey>();
//   GlobalKey<CartIconKey> cartKey3= GlobalKey<CartIconKey>();
//   GlobalKey<CartIconKey> cartKey4 = GlobalKey<CartIconKey>();
//   GlobalKey<CartIconKey> cartKey5 = GlobalKey<CartIconKey>();
//   GlobalKey<CartIconKey> coinanimation = GlobalKey<CartIconKey>();
//
//   late Function(GlobalKey) runAddToCartAnimation;
//   var _cartQuantityItems = 0;
//   String winid='';
//   String next='0';
//   bool gamestart=true;
//   bool show=false;
//   int chaal=2;
//   bool inc=false;
//   bool pack=false;
//   bool sideshow=false;
//   bool sideshownext=true;
//   bool ham=false;
//   String turn='5';
//   bool slidereq=false;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return AddToCartAnimations(
//       // To send the library the location of the Cart icon
//       cartKey: chalani==false?keyl:coinanimation,
//       height: 30,
//       width: 30,
//       opacity: 0.85,
//       dragAnimation: const DragToCartAnimationOptions(
//         rotation: true,
//       ),
//       jumpAnimation: const JumpAnimationOptions(),
//       createAddToCartAnimation: (runAddToCartAnimation) {
//         // You can run the animation by addToCartAnimationMethod, just pass trough the the global key of  the image as parameter
//         // You can run the animation by adahdToCartAnimationMethod, just pass trough the the global key of  the image as parameter
//         this.runAddToCartAnimation = runAddToCartAnimation;
//       },
//       child: Scaffold(
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/playnowtable.png"), fit: BoxFit.fill),
//           ),
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                               context: context,
//                               builder: (BuildContext context)=>Back(useid: useid, table: table, gid: gid,)
//                           );
//                         },
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.10,
//                           width: MediaQuery.of(context).size.width*0.0850,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage("assets/images/back.png",),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                               context: context,
//                               builder:
//                                   (BuildContext context )=>i2()
//                           );
//                         },
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.13,
//                           width: MediaQuery.of(context).size.width*0.0760,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage("assets/images/i2.png"),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       SizedBox(
//                         width:  MediaQuery.of(context).size.width*0.59,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                               barrierDismissible: false,
//                               context: context,
//                               builder:
//                                   (BuildContext context )=>Store()
//                           );
//
//                         },
//                         child: Container(
//                           height:  MediaQuery.of(context).size.height*0.18,
//                           width:  MediaQuery.of(context).size.width*0.13,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image:
//                                   AssetImage("assets/images/bottom1.png"),fit: BoxFit.cover)),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding:
//                                 EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +14, bottom: MediaQuery.of(context).viewInsets.bottom +4),
//                                 child: Container(
//                                   height:  MediaQuery.of(context).size.height*0.0600,
//                                   width:  MediaQuery.of(context).size.width*0.0450,
//                                   child: Image.asset(
//                                     "assets/images/roulette.png",fit: BoxFit.fill,
//                                   ),
//                                 ),
//                               ),
//                               Text(" BUY", style: TextStyle(color: Colors.amber,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                               context: context,
//                               builder:
//                                   (BuildContext context )=>Setting()
//                           );
//                         },
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.0960,
//                           width: MediaQuery.of(context).size.width*0.0600,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage("assets/images/setting.png"),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//
//               players==null?Container():player3==null?Container(): players[player3]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.15,
//                 left: MediaQuery.of(context).size.width*0.255,
//                 child: Column(
//                   children: [
//                     Stack(
//                       clipBehavior:Clip.none,
//                       children: [
//                         turn=='3'? BreathingGlowingButton(
//                             height: MediaQuery.of(context).size.height*0.20,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             onTap: (){},
//                             buttonBackgroundColor: Colors.transparent,
//                             glowColor: Colors.yellow,
//                             child:Container(
//                               height: MediaQuery.of(context).size.height*0.20,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                             )):Container(),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder:
//                                     (BuildContext context )=>Guest_Profile(id:players[player3]['rusers_id'],img:players[player3]['userimage'], name: players[player3]['username'],win:players[player2]['Totalwin'],tableno: table,)
//                             );
//                           },
//                           child: keyl==cartKey3?AddToCartIcon(
//                             key: keyl,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height*0.24,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                               decoration: BoxDecoration(
//                                 image: refdata==null?DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill):refdata[player3]['status'].toString()!='1'?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill):
//                                 DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right +2, top:  MediaQuery.of(context).viewInsets.top +25),
//                                     child: Container(
//                                       height: MediaQuery.of(context).size.height*0.1,
//                                       width:  MediaQuery.of(context).size.width*0.06,
//                                       decoration: BoxDecoration(
//                                           image:  players==null ?DecorationImage(
//                                               image:AssetImage("assets/images/person1.png"),
//                                               fit: BoxFit.fill):
//                                           players[player3]['userimage']==null?
//                                           DecorationImage(
//                                               image:AssetImage("assets/images/person1.png")):
//                                           DecorationImage(
//                                               image:NetworkImage(players[player3]['userimage'].toString(),),
//                                               fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top +3),
//                                     child: Text(
//                                       players==null?'': players[player3]['balance']==null?'':
//                                       players[player3]['balance'].toString(),
//                                       style: TextStyle(
//                                           color: Colors.amber,
//                                           fontSize: 12 * MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ):Container(
//                             height: MediaQuery.of(context).size.height*0.24,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             decoration: BoxDecoration(
//                               image: refdata==null?DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill):refdata[player3]['status'].toString()!='1'?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill):
//                               DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill),
//                             ),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right +2, top:  MediaQuery.of(context).viewInsets.top +25),
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height*0.1,
//                                     width:  MediaQuery.of(context).size.width*0.06,
//                                     decoration: BoxDecoration(
//                                         image:  players==null ?DecorationImage(
//                                             image:AssetImage("assets/images/person1.png"),
//                                             fit: BoxFit.fill):
//                                         players[player3]['userimage']==null?
//                                         DecorationImage(
//                                             image:AssetImage("assets/images/person1.png")):
//                                         DecorationImage(
//                                             image:NetworkImage(players[player3]['userimage'].toString(),),
//                                             fit: BoxFit.fill)
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top +3),
//                                   child: Text(
//                                     players==null?'': players[player3]['balance']==null?'':
//                                     players[player3]['balance'].toString(),
//                                     style: TextStyle(
//                                         color: Colors.amber,
//                                         fontSize: 12 * MediaQuery.textScaleFactorOf(context),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         currentplay!=players[player3]['rusers_id'].toString()?Container():
//                         Positioned(
//                             top:MediaQuery.of(context).size.height*0.030,
//                             left:-MediaQuery.of(context).size.width*0.01 ,
//                             child: turn=='3'? _AnimatedLiquidLinearProgressIndicator():Container()
//                         ),
//                         Positioned(
//                           child: winid==players[player3]['rusers_id'].toString()?
//                           Container(
//                               height: 90,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/winner.gif',),
//
//                                       fit:BoxFit.fitHeight
//                                   )
//                               ),
//                               child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
//                           ):Container(),
//                         ),
//
//                       ],
//                     ),
//                     Stack(
//                         clipBehavior: Clip.none,
//                         children: [
//                           Container(
//                             height: 30,
//                             width: 65,
//                             child:
//                             keyl==cartKey3 && sideshow==true? ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//                             keyl==cartKey3 && sideshownext==true? ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//                             keyl==cartKey3 && ham==true?
//                             ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//                             Container(height: 30, width: 60,
//                               child: Image.asset("assets/images/carddistribute.gif"),
//                             ),
//                             // ListView(
//                             //   scrollDirection: Axis.horizontal,
//                             //   children: [
//                             //     Container(height: 30, width: 20,
//                             //       child: Image.asset("assets/images/backcard1.jpg"),
//                             //     ),
//                             //     Container(height: 30, width: 20,
//                             //       child:Image.asset("assets/images/backcard1.jpg"),
//                             //     ),
//                             //     Container(height: 30, width: 20,
//                             //       child: Image.asset("assets/images/backcard1.jpg"),
//                             //     )
//                             //
//                             //   ],
//                             // )
//                           ),
//                           players[player3]['status']=='2' ?
//                           Positioned(
//                               top: -MediaQuery.of(context).size.height*0.04,
//                               left: MediaQuery.of(context).size.width*0.006,
//
//                               child: Container(
//                                 height:MediaQuery.of(context).size.height*0.15,
//                                 width: MediaQuery.of(context).size.width*0.06,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage('assets/images/browntxtfield.png')
//
//                                     )
//                                 ),
//                                 child: Center(child: Text('Packed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                               )):Container(),
//                           players[player3]['show_status']=='0'?
//                           Positioned(
//                               top: -MediaQuery.of(context).size.height*0.04,
//                               left: MediaQuery.of(context).size.width*0.006,
//
//                               child: Container(
//                                 height:MediaQuery.of(context).size.height*0.15,
//                                 width: MediaQuery.of(context).size.width*0.06,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage('assets/images/browntxtfield.png')
//
//                                     )
//                                 ),
//                                 child: Center(child: Text('Blind',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                               )):Container(),
//                           players[player3]['show_status']=='1'?
//                           Positioned(
//                               top: -MediaQuery.of(context).size.height*0.04,
//                               left: MediaQuery.of(context).size.width*0.006,
//
//                               child: Container(
//                                 height:MediaQuery.of(context).size.height*0.15,
//                                 width: MediaQuery.of(context).size.width*0.06,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: AssetImage('assets/images/browntxtfield.png')
//
//                                     )
//                                 ),
//                                 child: Center(child: Text('Seen',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                               )):Container(),
//                         ])
//                   ],
//                 ),
//
//               ),
//               players==null?Container(): player3==null?Container():players[player3]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.229,
//                 left: MediaQuery.of(context).size.width*0.255,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.0450,
//                   width:  MediaQuery.of(context).size.width*0.0250,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/roulette.png"),
//                           fit: BoxFit.fill)),
//                 ),
//               ),
//               players==null?Container(): player4==null?Container():players[player4]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.15,
//                 right: MediaQuery.of(context).size.width*0.255,
//                 child: Column(
//                   children: [
//                     Stack(
//                       clipBehavior:Clip.none,
//
//                       children: [
//                         turn=='4'? BreathingGlowingButton(
//                             height: MediaQuery.of(context).size.height*0.20,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             onTap: (){},
//                             buttonBackgroundColor: Colors.transparent,
//                             glowColor: Colors.yellow,
//                             child:Container(
//                               height: MediaQuery.of(context).size.height*0.20,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                             )):Container(),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder:
//                                     (BuildContext context ) =>Guest_Profile(id: players[player4]['rusers_id'],img:players[player4]['userimage'], name: players[player4]['username'],win:players[player4]['Totalwin'],tableno: table,)
//                             );
//                           },
//                           child: keyl==cartKey4?AddToCartIcon(
//                             key: keyl,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height*0.24,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                               decoration: BoxDecoration(
//                                 image:refdata==null?DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill):refdata[player4]['status'].toString()!='1'?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill):
//                                 DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill),
//                               ),
//                               child: Column(
//                                 children: [
//
//                                   Padding(
//                                     padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                     child: Container(
//                                       height: MediaQuery.of(context).size.height*0.1,
//                                       width:  MediaQuery.of(context).size.width*0.06,
//                                       decoration:BoxDecoration(
//                                           image:  players==null ?DecorationImage(
//                                               image:AssetImage("assets/images/PlayPerson1.png"),
//                                               fit: BoxFit.fill):
//                                           players[player4]['userimage']==null?
//                                           DecorationImage(
//                                               image:AssetImage("assets/images/PlayPerson1.png")):
//                                           DecorationImage(
//                                               image:NetworkImage(players[player4]['userimage'].toString(),),
//                                               fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 3),
//                                     child: Text(
//                                       players==null?'': players[player4]['balance']==null?'':
//                                       players[player4]['balance'].toString(),
//                                       style: TextStyle(
//                                           color: Colors.amber,
//                                           fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ):
//                           Container(
//                             height: MediaQuery.of(context).size.height*0.24,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             decoration: BoxDecoration(
//                               image:refdata==null?DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill):refdata[player4]['status'].toString()!='1'?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill):
//                               DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill),
//                             ),
//                             child: Column(
//                               children: [
//
//                                 Padding(
//                                   padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height*0.1,
//                                     width:  MediaQuery.of(context).size.width*0.06,
//                                     decoration:BoxDecoration(
//                                         image:  players==null ?DecorationImage(
//                                             image:AssetImage("assets/images/PlayPerson1.png"),
//                                             fit: BoxFit.fill):
//                                         players[player4]['userimag e']==null?
//                                         DecorationImage(
//                                             image:AssetImage("assets/images/PlayPerson1.png")):
//                                         DecorationImage(
//                                             image:NetworkImage(players[player4]['userimage'].toString(),),
//                                             fit: BoxFit.fill)
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 3),
//                                   child: Text(
//                                     players==null?'': players[player4]['balance']==null?'':
//                                     players[player4]['balance'].toString(),
//                                     style: TextStyle(
//                                         color: Colors.amber,
//                                         fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         currentplay!=players[player4]['rusers_id'].toString()?Container():
//                         Positioned(
//                             top:MediaQuery.of(context).size.height*0.030,
//                             left:-MediaQuery.of(context).size.width*0.01 ,
//                             child: turn=='4'? _AnimatedLiquidLinearProgressIndicator():Container()
//                         ),
//                         Positioned(
//                           child: winid==players[player4]['rusers_id'].toString()?
//                           Container(
//                               height: 90,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/winner.gif',),
//
//                                       fit:BoxFit.fitHeight
//                                   )
//                               ),
//                               child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
//                           ):Container(),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//
//                         Container(
//                             height: 30,
//                             width: 65,
//                             child: keyl==cartKey4 && sideshow==true?
//                             ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//                             keyl==cartKey4 && sideshownext==true? ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//
//                             keyl==cartKey4 && ham==true?
//                             ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage1'].toString(), )),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage2'].toString())),
//                                 ),
//                                 Container(height: 30, width: 20,
//                                   child: Opacity(
//                                       opacity: refdata==null?1.0:refdata[player4]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                       child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player4]['cardimage3'].toString())),
//                                 )
//
//                               ],
//                             ):
//                             Container(height: 30, width: 60,
//                               child: Image.asset("assets/images/carddistribute.gif"),
//                             )
//                           // ListView(
//                           //   scrollDirection: Axis.horizontal,
//                           //   children: [
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child:Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     )
//                           //
//                           //   ],
//                           // )
//                         ),
//                         players[player4]['status']=='2'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Packed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//
//                         players[player4]['show_status']=='0'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//                                   )
//                               ),
//                               child: Center(child: Text('Blind',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                         players[player4]['show_status']=='1'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Seen',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               players==null?Container():player4==null?Container(): players[player4]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.229,
//                 right: MediaQuery.of(context).size.width*0.330,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.0450,
//                   width:  MediaQuery.of(context).size.width*0.0250,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/roulette.png"),
//                           fit: BoxFit.fill)),
//                 ),
//
//               ),
//
//
//               players==null?Container(): player2==null?Container():players[player2]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.31,
//                 left: MediaQuery.of(context).size.width*0.0750,
//                 child: Row(
//                   children: [
//                     Stack(
//
//                       children: [
//                         turn=='2'? BreathingGlowingButton(
//                             height: MediaQuery.of(context).size.height*0.20,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             onTap: (){},
//                             buttonBackgroundColor: Colors.transparent,
//                             glowColor: Colors.yellow,
//                             child:Container(
//                               height: MediaQuery.of(context).size.height*0.20,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                             )):Container(),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder:
//                                     (BuildContext context ) =>Guest_Profile(id: players[player2]['rusers_id'], img: players[player2]['userimage'], name: players[player2]['username'],win:players[player2]['Totalwin'] ,tableno: table,)
//                             );
//                           },
//                           child: keyl==cartKey2?AddToCartIcon(
//                             key: keyl,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height*0.24,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                               decoration: BoxDecoration(
//                                 image: refdata==null?DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill):refdata[player2]['status'].toString()!='1'?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill):
//                                 DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill),
//                               ),
//                               child: Column(
//                                 children: [
//
//                                   Padding(
//                                     padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                     child: Container(
//                                       height: MediaQuery.of(context).size.height*0.1,
//                                       width:  MediaQuery.of(context).size.width*0.06,
//                                       decoration: BoxDecoration(
//                                           image:  players==null ?DecorationImage(
//                                               image:AssetImage("assets/images/person1.png"),
//                                               fit: BoxFit.fill):
//                                           players[player2]['userimage']==null?
//                                           DecorationImage(
//                                               image:AssetImage("assets/images/person1.png")):
//                                           DecorationImage(
//                                               image:NetworkImage(players[player2]['userimage'].toString(),),
//                                               fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 6),
//                                     child: Text(
//                                       players==null?'': players[player2]['balance']==null?'':
//                                       players[player2]['balance'].toString(),
//                                       style: TextStyle(
//                                           color: Colors.amber,
//                                           fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ):Container(
//                             height: MediaQuery.of(context).size.height*0.24,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             decoration: BoxDecoration(
//                               image: refdata==null?DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill):refdata[player2]['status'].toString()!='1'?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill):
//                               DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill),
//                             ),
//                             child: Column(
//                               children: [
//
//                                 Padding(
//                                   padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height*0.1,
//                                     width:  MediaQuery.of(context).size.width*0.06,
//                                     decoration: BoxDecoration(
//                                         image:  players==null ?DecorationImage(
//                                             image:AssetImage("assets/images/person1.png"),
//                                             fit: BoxFit.fill):
//                                         players[player2]['userimage']==null?
//                                         DecorationImage(
//                                             image:AssetImage("assets/images/person1.png")):
//                                         DecorationImage(
//                                             image:NetworkImage(players[player2]['userimage'].toString(),),
//                                             fit: BoxFit.fill)
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 6),
//                                   child: Text(
//                                     players==null?'': players[player2]['balance']==null?'':
//                                     players[player2]['balance'].toString(),
//                                     style: TextStyle(
//                                         color: Colors.amber,
//                                         fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         currentplay!=players[player2]['rusers_id'].toString()?Container():
//
//                         Positioned(
//                           bottom:MediaQuery.of(context).size.height*0.05,
//                           left:-MediaQuery.of(context).size.width*0.01 ,
//                           child: turn=='2'? _AnimatedLiquidLinearProgressIndicator():Container(),
//
//                           //     Borderanimate(milisecond: 20000,
//                           //   child: Text(''),
//                           //
//                           // )
//
//                         ),
//
//                         Positioned(
//                           child: winid==players[player2]['rusers_id'].toString()?
//                           Container(
//                               height: 90,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/winner.gif',),
//
//                                       fit:BoxFit.fitHeight
//                                   )
//                               ),
//                               child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
//                           ):Container(),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 65,
//                           child: keyl==cartKey2 && sideshow==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           keyl==cartKey2 && sideshownext==true? ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//
//                           keyl==cartKey2 && ham==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player2]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player2]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           Container(height: 30, width: 60,
//                             child: Image.asset("assets/images/carddistribute.gif"),
//                           ),
//                           // ListView(
//                           //   scrollDirection: Axis.horizontal,
//                           //   children: [
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child:Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     )
//                           //
//                           //   ],
//                           // )
//                         ),
//                         players[player2]['status']!='2'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Packed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//
//                         players[player2]['show_status']=='0'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Blind',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                         players[player2]['show_status']=='1'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Seen',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               players==null?Container():player2==null?Container(): players[player2]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.389,
//                 left: MediaQuery.of(context).size.width*0.0760,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.0450,
//                   width:  MediaQuery.of(context).size.width*0.0250,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/roulette.png"),
//                           fit: BoxFit.fill)),
//
//                 ),
//               ),
//
//
//               players==null?Container(): player5==null?Container():players[player5]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.31,
//                 right: MediaQuery.of(context).size.width*0.0650,
//                 child: Row(
//                   children: [
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//
//                         Container(
//                           height: 30,
//                           width: 65,
//                           child: keyl==cartKey5 && sideshow==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           keyl==cartKey5 && sideshownext==true? ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player3]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player3]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//
//                           keyl==cartKey5 && ham==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player5]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player5]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           Container(height: 30, width: 60,
//                             child: Image.asset("assets/images/carddistribute.gif"),
//                           ),
//                           // ListView(
//                           //   scrollDirection: Axis.horizontal,
//                           //   children: [
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child:Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     )
//                           //
//                           //   ],
//                           // )
//                         ),
//                         players[player5]['status']=='2'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Packed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//
//                         players[player5]['show_status']=='0'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Blind',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                         players[player5]['show_status']=='1'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Seen',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                       ],
//                     ),
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         turn=='5'? BreathingGlowingButton(
//                             height: MediaQuery.of(context).size.height*0.20,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             onTap: (){},
//                             buttonBackgroundColor: Colors.transparent,
//                             glowColor: Colors.yellow,
//                             child:Container(
//                               height: MediaQuery.of(context).size.height*0.20,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                             )):Container(),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder:
//                                     (BuildContext context ) =>Guest_Profile(id: players[player5]['rusers_id'],
//                                   img: players[player5]['userimage'], name: players[player5]['username'],
//                                   win: players[player5]['Totalwin'],tableno: table,
//                                 )
//                             );
//                           },
//                           child: keyl==cartKey5?AddToCartIcon(
//                             key: keyl,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height*0.24,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                               decoration: BoxDecoration(
//                                 image: refdata==null?DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill):refdata[player5]['status'].toString()!='1'?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill):
//                                 DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 1, top:  MediaQuery.of(context).viewInsets.top + 25),
//                                     child: Container(
//                                       height: MediaQuery.of(context).size.height*0.1,
//                                       width:  MediaQuery.of(context).size.width*0.06,
//                                       decoration: BoxDecoration(
//                                           image:  players==null ?DecorationImage(
//                                               image:AssetImage("assets/images/person1.png"),
//                                               fit: BoxFit.fill):
//                                           players[player5]['userimage']==null?
//                                           DecorationImage(
//                                               image:AssetImage("assets/images/person1.png")):
//                                           DecorationImage(
//                                               image:NetworkImage(players[player5]['userimage'].toString(),),
//                                               fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top + 6),
//                                     child: Text(
//                                       players==null?'': players[player5]['balance']==null?'':
//                                       players[player5]['balance'].toString(),
//                                       style: TextStyle(
//                                           color: Colors.amber,
//                                           fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ):Container(
//                             height: MediaQuery.of(context).size.height*0.24,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             decoration: BoxDecoration(
//                               image: refdata==null?DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill):refdata[player5]['status'].toString()!='1'?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill):
//                               DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill),
//                             ),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 1, top:  MediaQuery.of(context).viewInsets.top + 25),
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height*0.1,
//                                     width:  MediaQuery.of(context).size.width*0.06,
//                                     decoration: BoxDecoration(
//                                         image:  players==null ?DecorationImage(
//                                             image:AssetImage("assets/images/person1.png"),
//                                             fit: BoxFit.fill):
//                                         players[player5]['userimage']==null?
//                                         DecorationImage(
//                                             image:AssetImage("assets/images/person1.png")):
//                                         DecorationImage(
//                                             image:NetworkImage(players[player5]['userimage'].toString(),),
//                                             fit: BoxFit.fill)
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top + 6),
//                                   child: Text(
//                                     players==null?'': players[player5]['balance']==null?'':
//                                     players[player5]['balance'].toString(),
//                                     style: TextStyle(
//                                         color: Colors.amber,
//                                         fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         currentplay!=players[player5]['rusers_id'].toString()?Container():
//
//                         Positioned(
//                             top:MediaQuery.of(context).size.height*0.030,
//                             left:-MediaQuery.of(context).size.width*0.01 ,
//                             child:turn=='5'?
//                             _AnimatedLiquidLinearProgressIndicator():Container()
//                         ),
//                         Positioned(
//                           child: winid==players[player5]['rusers_id'].toString()?
//                           Container(
//                               height: 90,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/winner.gif',),
//
//                                       fit:BoxFit.fitHeight
//                                   )
//                               ),
//                               child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
//                           ):Container(),
//                         ),
//                       ],
//                     ),
//
//                   ],
//                 ),
//               ),
//               players==null?Container():player5==null?Container(): players[player5]['username']==null?Container():
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.389,
//                 right: MediaQuery.of(context).size.width*0.14,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.0450,
//                   width:  MediaQuery.of(context).size.width*0.0250,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/roulette.png"),
//                           fit: BoxFit.fill)),
//                 ),
//               ),
//
//
//               players==null?Container():player1==null?Container(): players[player1]['username']==null?Container():
//               Positioned(
//                 bottom: MediaQuery.of(context).size.width*0.045,
//                 right: MediaQuery.of(context).size.width*0.40,
//                 child: Row(
//                   children: [
//
//                     Stack(
//                       clipBehavior:Clip.none,
//                       children: [
//                         turn=='1'? BreathingGlowingButton(
//                             height: MediaQuery.of(context).size.height*0.20,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             onTap: (){},
//                             buttonBackgroundColor: Colors.transparent,
//                             glowColor: Colors.yellow,
//                             child:Container(
//                               height: MediaQuery.of(context).size.height*0.20,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                             )):Container(),
//                         InkWell(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder:
//                                     (BuildContext context ) =>Guest_Profile(id: players[player1]['rusers_id'],
//                                   img: players[player1]['userimage'],
//                                   name: players[player1]['username'],
//                                   win: players[player1]['Totalwin'], tableno: table,
//                                 )
//                             );
//                           },
//                           child: keyl==cartKey1?AddToCartIcon(
//                             key: keyl,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height*0.24,
//                               width:  MediaQuery.of(context).size.width*0.10,
//                               decoration:BoxDecoration(
//                                 image:pack==true?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill) :refdata==null?DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill):refdata[player1]['status'].toString()!='1'?DecorationImage(
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     fit: BoxFit.fill):
//                                 DecorationImage(
//                                     colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                     image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                     fit: BoxFit.fill),
//                               ),
//
//
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                     child: Container(
//                                       height: MediaQuery.of(context).size.height*0.1,
//                                       width:  MediaQuery.of(context).size.width*0.06,
//                                       decoration: BoxDecoration(
//                                           image:  players==null ?DecorationImage(
//                                               image:AssetImage("assets/images/person1.png"),
//                                               fit: BoxFit.fill):
//                                           players[player1]['userimage']==null?
//                                           DecorationImage(
//                                               image:AssetImage("assets/images/person1.png")):
//                                           DecorationImage(
//                                               image:NetworkImage(players[player1]['userimage'].toString(),),
//                                               fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 3),
//                                     child: Text(
//                                       players==null?'': players[player1]['balance']==null?'0':
//                                       players[player1]['balance'].toString(),
//                                       style: TextStyle(
//                                           color: Colors.amber,
//                                           fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ):Container(
//                             height: MediaQuery.of(context).size.height*0.24,
//                             width:  MediaQuery.of(context).size.width*0.10,
//                             decoration:BoxDecoration(
//                               image:pack==true?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill) :refdata==null?DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill):refdata[player1]['status'].toString()!='1'?DecorationImage(
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   fit: BoxFit.fill):
//                               DecorationImage(
//                                   colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                   image: AssetImage("assets/images/PlayPerson1.png"),
//
//                                   fit: BoxFit.fill),
//                             ),
//
//
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height*0.1,
//                                     width:  MediaQuery.of(context).size.width*0.06,
//                                     decoration: BoxDecoration(
//                                         image:  players==null ?DecorationImage(
//                                             image:AssetImage("assets/images/person1.png"),
//                                             fit: BoxFit.fill):
//                                         players[player1]['userimage']==null?
//                                         DecorationImage(
//                                             image:AssetImage("assets/images/person1.png")):
//                                         DecorationImage(
//                                             image:NetworkImage(players[player1]['userimage'].toString(),),
//                                             fit: BoxFit.fill)
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 3),
//                                   child: Text(
//                                     players==null?'': players[player1]['balance']==null?'0':
//                                     players[player1]['balance'].toString(),
//                                     style: TextStyle(
//                                         color: Colors.amber,
//                                         fontSize: 12* MediaQuery.textScaleFactorOf(context),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         currentplay!=players[player1]['rusers_id'].toString()?Container():
//
//                         Positioned(
//                             top:MediaQuery.of(context).size.height*0.030,
//                             left:-MediaQuery.of(context).size.width*0.01 ,
//                             child: turn=='1'? _AnimatedLiquidLinearProgressIndicator():Container()
//                         ),
//                         Positioned(
//                           child: winid==players[player1]['rusers_id'].toString()?
//                           Container(
//                               height: 90,
//                               width: 80,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/winner.gif',),
//
//                                       fit:BoxFit.fitHeight
//                                   )
//                               ),
//                               child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
//                           ):Container(),
//                         ),
//                       ],
//                     ),
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 65,
//                           child: show==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           keyl==cartKey1 && ham==true?
//                           ListView(
//                             scrollDirection: Axis.horizontal,
//                             children: [
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage1'].toString(), )),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage2'].toString())),
//                               ),
//                               Container(height: 30, width: 20,
//                                 child: Opacity(
//                                     opacity: refdata==null?1.0:refdata[player1]['status'].toString()!='1'?0.4:pack==true?0.4:1.0,
//
//                                     child: Image.network(carddata==null?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':carddata[player1]['cardimage3'].toString())),
//                               )
//
//                             ],
//                           ):
//                           Container(height: 30, width: 60,
//                             child: Image.asset("assets/images/carddistribute.gif"),
//                           ),
//                           //      ListView(
//                           //   scrollDirection: Axis.horizontal,
//                           //   children: [
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child:Image.asset("assets/images/backcard1.jpg"),
//                           //     ),
//                           //     Container(height: 30, width: 20,
//                           //       child: Image.asset("assets/images/backcard1.jpg"),
//                           //     )
//                           //
//                           //   ],
//                           // ),
//                         ),
//                         show==false && players[player1]['status']=='2'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Packed',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//
//                         show==false && players[player1]['show_status']=='0'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Blind',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                         players[player1]['show_status']=='1'?
//                         Positioned(
//                             top: -MediaQuery.of(context).size.height*0.04,
//                             left: MediaQuery.of(context).size.width*0.006,
//
//                             child: Container(
//                               height:MediaQuery.of(context).size.height*0.15,
//                               width: MediaQuery.of(context).size.width*0.06,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/images/browntxtfield.png')
//
//                                   )
//                               ),
//                               child: Center(child: Text('Seen',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 8),)),
//                             )):Container(),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               players==null?Container():player1==null?Container(): players[player1]['username']==null?Container():
//               Positioned(
//                 // top: MediaQuery.of(context).size.width*0.418,
//                 top: MediaQuery.of(context).size.width*0.380,
//                 left: MediaQuery.of(context).size.width*0.41,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.0450,
//                   width:  MediaQuery.of(context).size.width*0.0250,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/roulette.png"),
//                           fit: BoxFit.fill)),
//                 ),
//               ),
//
//               gamestart==true && slidereq==false?
//               Positioned(
//                 bottom: MediaQuery.of(context).size.width * 0.0,
//                 left: MediaQuery.of(context).size.width * 0.13,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.14,
//                   width: MediaQuery.of(context).size.width * 0.99,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/playbottombar.png"),
//                         fit: BoxFit.fill),
//                   ),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: MediaQuery.of(context).viewInsets.top + 12,
//                             left: MediaQuery.of(context).viewInsets.top + 50),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.0100,
//                             ),
//                             InkWell(
//                               onTap: (){
//                                 packapi();
//
//                                 // packed();
//
//                               },
//                               child: Container(
//                                 height: MediaQuery.of(context).size.height * 0.0900,
//                                 width: MediaQuery.of(context).size.width * 0.12,
//                                 decoration: BoxDecoration(
//                                   image: pack==true?DecorationImage(
//                                       image: AssetImage("assets/images/pack1.png"),
//                                       colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                       fit: BoxFit.fill):DecorationImage(
//                                       image: AssetImage("assets/images/pack1.png"),
//
//                                       fit: BoxFit.fill),
//                                 ),
//                                 child: Center(
//                                     child: Text(
//                                       "Pack",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18 *
//                                               MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     )),
//                               ),
//                             ),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.0500,
//                             ),
//                             Row(
//                               children: [
//                                 InkWell(
//                                   onTap: () {
//                                     int amo1=chaal;
//                                     int dev=2;
//                                     var amo=amo1/dev;
//                                     if(inc==true && pack==false) {
//                                       setState(() {
//                                         chaal = amo.toInt();
//                                         inc=false;
//                                       });
//                                     }
//                                   },
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height * 0.0720,
//                                     width: MediaQuery.of(context).size.width * 0.0520,
//                                     decoration: BoxDecoration(
//                                         image:pack==true?
//                                         DecorationImage(
//                                             image:  AssetImage("assets/images/minusboot.png"),
//                                             colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//                                             fit: BoxFit.fill):
//                                         inc!=true?
//                                         DecorationImage(
//                                             image:  AssetImage("assets/images/minusboot.png"),
//                                             colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//                                             fit: BoxFit.fill):  DecorationImage(
//                                             image:  AssetImage("assets/images/minusboot.png"),
//                                             fit: BoxFit.fill)),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       top: MediaQuery.of(context).viewInsets.top +
//                                           3.0),
//                                   child: Container(
//                                     height:
//                                     MediaQuery.of(context).size.height * 0.0550,
//                                     width: MediaQuery.of(context).size.width * 0.13,
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: AssetImage(
//                                                 "assets/images/bootbutton.png"),
//                                             fit: BoxFit.fill)),
//                                     child: Center(
//                                         child: Text(
//                                           chaal.toString(),
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.bold),
//                                         )),
//                                   ),
//                                 ),
//                                 InkWell(
//                                   onTap: () {
//                                     var amo=chaal*2;
//                                     if(inc==false && pack==false) {
//                                       setState(() {
//                                         chaal = amo;
//                                         inc=true;
//                                       });
//                                     }
//                                   },
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height * 0.0710,
//                                     width: MediaQuery.of(context).size.width * 0.0500,
//                                     decoration: BoxDecoration(
//                                         image: pack==true?DecorationImage(
//                                             image: AssetImage("assets/images/plusboot.png"),
//                                             colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                             fit: BoxFit.fill):inc!=false?DecorationImage(
//                                             image: AssetImage("assets/images/plusboot.png"),
//                                             colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                             fit: BoxFit.fill):DecorationImage(
//                                             image: AssetImage("assets/images/plusboot.png"),
//                                             fit: BoxFit.fill)),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               width: MediaQuery.of(context).size.width * 0.0500,
//                             ),
//                             InkWell(
//
//                               onTap: (){
//                                 setState(() {
//                                   inc=false;
//                                 });
//                                 //coinClick(coinanimation);
//                                 transitionadd(3);
//
//                               },
//                               child: Container(
//                                 height: MediaQuery.of(context).size.height * 0.0900,
//                                 width: MediaQuery.of(context).size.width * 0.12,
//                                 decoration: BoxDecoration(
//                                   image: pack==true?DecorationImage(
//                                       image: AssetImage("assets/images/pack1.png"),
//                                       colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                       fit: BoxFit.fill):
//                                   DecorationImage(
//                                     // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                       image: AssetImage("assets/images/pack1.png"),
//
//                                       fit: BoxFit.fill),
//                                 ),
//                                 child: Center(
//                                     child: Text(
//                                       show==true?"Chaal" :"Blind",
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 18 *
//                                               MediaQuery.textScaleFactorOf(context),
//                                           fontWeight: FontWeight.bold),
//                                     )),
//                               ),
//                             ),
//                             show==false?InkWell(
//                               onTap: (){
//                                 setState(() {
//                                   showapi();
//                                   show=true;
//                                 });
//                               },
//                               child: Padding(
//                                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
//
//                                 child: Container(
//                                   height: MediaQuery.of(context).size.height * 0.0900,
//                                   width: MediaQuery.of(context).size.width * 0.12,
//                                   decoration: BoxDecoration(
//                                     image: pack==true?DecorationImage(
//                                         image: AssetImage("assets/images/pack1.png"),
//                                         colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                         fit: BoxFit.fill):
//                                     DecorationImage(
//                                       // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                         image: AssetImage("assets/images/pack1.png"),
//
//                                         fit: BoxFit.fill),
//                                   ),
//                                   child: Center(
//                                       child: Text(
//                                         "Show",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18 *
//                                                 MediaQuery.textScaleFactorOf(context),
//                                             fontWeight: FontWeight.bold),
//                                       )),
//                                 ),
//                               ),
//                             ):InkWell(
//                               onTap: (){
//                                 // setState(() {
//                                 //   sideshow=true;
//                                 // });
//                                 transitionadd(1);
//                               },
//                               child: Padding(
//                                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
//
//                                 child: Container(
//                                   height: MediaQuery.of(context).size.height * 0.0900,
//                                   width: MediaQuery.of(context).size.width * 0.16,
//                                   decoration: BoxDecoration(
//                                     image: pack==true?DecorationImage(
//                                         image: AssetImage("assets/images/pack1.png"),
//                                         colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                         fit: BoxFit.fill):
//                                     DecorationImage(
//                                       // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
//
//                                         image: AssetImage("assets/images/pack1.png"),
//
//                                         fit: BoxFit.fill),
//                                   ),
//                                   child: Center(
//                                       child: Text(
//                                         "Side Show",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18 *
//                                                 MediaQuery.textScaleFactorOf(context),
//                                             fontWeight: FontWeight.bold),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ):
//               slidereq==true && gamestart==true?
//               Positioned(
//                 bottom: -MediaQuery.of(context).size.width*0.01,
//                 left: MediaQuery.of(context).size.width*0.13,
//                 child: Container(
//                   padding: EdgeInsets.only(right:MediaQuery.of(context).size.width*0.2),
//                   height: MediaQuery.of(context).size.height*0.12,
//                   width:  MediaQuery.of(context).size.width*0.99,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/slideshowre.png"),
//                         fit: BoxFit.fill),
//                   ),
//                   child:  Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(
//                         mainAxisAlignment:MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             width:MediaQuery.of(context).size.width*0.50,
//                             height:MediaQuery.of(context).size.height*0.06,
//                             child: LinearPercentIndicator(
//                               width: MediaQuery.of(context).size.width*0.40,
//                               animation: slidereq,
//                               lineHeight: 8.0,
//                               animationDuration: 3000,
//                               percent: 0.5,
//                               animateFromLastPercent: true,
//                               center: Text(""),
//                               progressColor: Colors.red,
//                             ),
//                           ),
//                           Center(child: Text('Accept Slide Show Request from user ?', style: TextStyle(color:Colors.white,fontSize: 10, fontWeight: FontWeight.w900),)),
//                         ],
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: InkWell(
//                             onTap:()async{
//                               await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_update.php?myuserid=$nextposition&oppuserid=$useid&gid=$gid&tableno=$table&status=2'));
//
//                             },
//                             child: Image.asset('assets/images/wrong.png')),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: InkWell(
//                             onTap:()async{
//                               await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_update.php?myuserid=$nextposition&oppuserid=$useid&gid=$gid&tableno=$table&status=1'));
//                               //
//                               // setState(() {
//                               //   sideshow=true;
//                               //   slidereq=false;
//                               //   next='1';
//                               // });
//                             },
//                             child: Image.asset('assets/images/right.png')),
//                       ),
//                     ],
//                   ),
//                 ),
//               ):
//               Positioned(
//                 bottom: MediaQuery.of(context).size.width*0.0,
//                 left: MediaQuery.of(context).size.width*0.13,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.14,
//                   width:  MediaQuery.of(context).size.width*0.99,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/playbottombar.png"),
//                         fit: BoxFit.fill),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 7),
//                             child: Text(
//                               "Max Blind",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w300),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
//                             child: Text(
//                               pos==null?0:pos['blind_limite'],
//                               style: TextStyle(
//                                   color: Colors.amber,
//                                   fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 130, top: MediaQuery.of(context).viewInsets.top + 5),
//                             child: Text(
//                               "Boot Amount",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w300),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
//                             child: Text(
//
//                               pos==null?0:pos['start_price'],
//                               style: TextStyle(
//                                   color: Colors.amber,
//                                   fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 0),
//                             child: Text(
//                               "Max Chaal",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w300),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 14, top: MediaQuery.of(context).viewInsets.top + 0),
//                             child: Text(
//
//                               pos==null?0:pos['end_price'],
//                               style: TextStyle(
//                                   color: Colors.amber,
//                                   fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 72, top: MediaQuery.of(context).viewInsets.top + 0),
//                             child: Text(
//                               "Max Pot",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w300),
//                             ),
//                           ),
//                           Padding(
//                             padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left +17, top:  MediaQuery.of(context).viewInsets.top +0),
//                             child: Text(
//
//                               pos==null?0:pos['gamelimit'],
//                               style: TextStyle(
//                                   color: Colors.amber,
//                                   fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                   fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           // Padding(
//                           //   padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 42, bottom: MediaQuery.of(context).viewInsets.bottom + 8),
//                           //   child: Text(
//                           //     "Please wait for next game",
//                           //     style: TextStyle(
//                           //         color: Colors.amber,
//                           //         fontSize: 11* MediaQuery.textScaleFactorOf(context),
//                           //         fontWeight: FontWeight.w500),
//                           //   ),
//                           // )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               Positioned(
//                 top: MediaQuery.of(context).size.width*0.43,
//                 left: MediaQuery.of(context).size.width*0.0400,
//                 child: InkWell(
//                   onTap: () {
//                     refreshcreate();
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context)=>Comment(tableno:table)
//                     );
//                   },
//                   child: Container(
//                     height: MediaQuery.of(context).size.height*0.15,
//                     width:  MediaQuery.of(context).size.width*0.0900,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("assets/images/comment.png"),
//                             fit: BoxFit.fill)),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom: MediaQuery.of( context).size.height*0.10,
//                 right: MediaQuery.of(context).size.width*0.001,
//                 child: AppListItem(
//                   onClick: listClick,
//                   index: 1,
//                 ),),
//
//               // Positioned(
//               //   child: Center(
//               //     child: AddToCartIcon(
//               //         key: coinanimation,
//               //       child: Image.asset('assets/images/lotsofchips.png', height:100,width:100)
//               //     ),
//               //   ),
//               // ),
//               players==null?Container():player1==null?Container(): players[player1]['totalamont']==null?Container():
//               Positioned(
//                   top:MediaQuery.of(context).size.height*0.45,
//                   left: MediaQuery.of(context).size.height*1.0,
//
//
//                   child:Center(
//
//                       child:Container(
//                         height:MediaQuery.of(context).size.height*0.25,
//                         width: MediaQuery.of(context).size.width*0.12,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage('assets/images/browntxtfield.png')
//
//                             )
//                         ),
//                         child: Center(child: Text(players[player1]['totalamont'].toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),)),
//                       )
//                   )
//               ),
//
//               Positioned(child: Container(
//
//
//                   height: MediaQuery.of(context).size.height*0.90,
//                   width: MediaQuery.of(context).size.width,
//                   child: UserPlayTransition(useid: useid, table: table, gid: gid))),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void listClick(GlobalKey widgetKey) async {
//     setState(() {
//       chalani=false ;
//     });
//     transitionadd(2);
//     await runAddToCartAnimation(widgetKey);
//     await keyl.currentState!
//         .runCartAnimation((++_cartQuantityItems).toString());
//
//   }
//
//   void coinClick(GlobalKey widgetKey) async {
//     setState(() {
//       chalani=true;
//     });
//     await runAddToCartAnimation(widgetKey);
//     await coinanimation.currentState!
//         .runCartAnimation((++_cartQuantityItems).toString());
//
//   }
//
//
// }
//
//
//
// class AppListItem extends StatelessWidget {
//   final GlobalKey widgetKey = GlobalKey();
//   final int index;
//   final void Function(GlobalKey) onClick;
//
//   AppListItem({super.key, required this.onClick, required this.index});
//   @override
//   Widget build(BuildContext context) {
//     //  Container is mandatory. It can hold images or whatever you want
//     Container mandatoryContainer = Container(
//       key: widgetKey,
//       width: 60,
//       height: 60,
//       color: Colors.transparent,
//       child: Image.network(
//         "https://cdn.pixabay.com/photo/2016/12/22/10/01/hand-1925091_1280.png",
//         width: 60,
//         height: 60,
//       ),
//     );
//
//     return InkWell(
//       onTap: () => onClick(widgetKey),
//       child: mandatoryContainer,
//     );
//   }
// }
//
//
// class CoinItem extends StatelessWidget {
//   final GlobalKey widgetKey = GlobalKey();
//   final int index;
//   final void Function(GlobalKey) onClick;
//   final Widget child;
//   CoinItem({super.key, required this.onClick, required this.index, required this.child});
//   @override
//   Widget build(BuildContext context) {
//     //  Container is mandatory. It can hold images or whatever you want
//     Container mandatoryContainer = Container(
//       key: widgetKey,
//       width: 30,
//       height: 30,
//       color: Colors.transparent,
//       child: child,
//     );
//
//     return InkWell(
//       onTap: () => onClick(widgetKey),
//       child: mandatoryContainer,
//     );
//   }
// }
//
//
//
// class _AnimatedLiquidLinearProgressIndicator extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() =>
//       _AnimatedLiquidLinearProgressIndicatorState();
// }
//
// class _AnimatedLiquidLinearProgressIndicatorState
//     extends State<_AnimatedLiquidLinearProgressIndicator>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 12),
//     );
//
//     _animationController.addListener(() => setState(() {}));
//     _animationController.repeat();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final percentage = _animationController.value * 100;
//     return Center(
//       child: Container(
//         width: MediaQuery.of(context).size.width*0.12,
//         height: MediaQuery.of(context).size.height*0.15,
//         padding: EdgeInsets.symmetric(horizontal: 24.0),
//         child: RotatedBox(
//           quarterTurns: 135,
//
//           child: LiquidLinearProgressIndicator(
//             value: _animationController.value,
//             backgroundColor: Colors.transparent,
//             valueColor: AlwaysStoppedAnimation(percentage <=90?Colors.blue.withOpacity(0.7):Colors.red.withOpacity(0.7)),
//             borderRadius: 0.0,
//             borderColor: Colors.transparent,
//             borderWidth: 0,
//             center: Text(
//                 ''
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
//
