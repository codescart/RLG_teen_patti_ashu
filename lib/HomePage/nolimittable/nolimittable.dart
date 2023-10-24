// import 'package:flutter/material.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/backbutton.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/comment.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/guestprofile.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/i2.dart';
// import 'package:ultimate_teen_patti/HomePage/PlayNow/store.dart';
// import 'package:ultimate_teen_patti/HomePage/homePage.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:ultimate_teen_patti/HomePage/setting.dart';
//
// class No_Limit_Table extends StatefulWidget {
//   const No_Limit_Table({Key? key}) : super(key: key);
//
//   @override
//   State<No_Limit_Table> createState() => _No_Limit_TableState();
// }
//
// class _No_Limit_TableState extends State<No_Limit_Table> {
//   bool isSwitched = false;
//   Color _textColor = Colors.green;
//   Color _appBarColor = Colors.green;
//   bool status = false;
//   bool isSwitchOn = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/images/table1.jpg"), fit: BoxFit.fill),
//         ),
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                     onTap: () {
//                       showDialog(
//                           context: context,
//                           builder: (BuildContext context)=>Back()
//                           );
//                     },
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.10,
//                       width: MediaQuery.of(context).size.width*0.0850,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage("assets/images/back.png",),
//                               fit: BoxFit.fill)),
//                     ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         showDialog(
//                             context: context,
//                             builder:
//                                 (BuildContext context )=>i2()
//                         );
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height*0.13,
//                         width: MediaQuery.of(context).size.width*0.0760,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage("assets/images/i2.png"),
//                                 fit: BoxFit.fill)),
//                       ),
//                     ),
//                     SizedBox(
//                       width:  MediaQuery.of(context).size.width*0.59,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         showDialog(
//                             context: context,
//                             builder:
//                                 (BuildContext context )=>Store()
//                         );
//
//                       },
//                       child: Container(
//                         height:  MediaQuery.of(context).size.height*0.18,
//                         width:  MediaQuery.of(context).size.width*0.13,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image:
//                                     AssetImage("assets/images/bottom1.png"),fit: BoxFit.cover)),
//                         child: Row(
//                           children: [
//                             Padding(
//                               padding:
//                                    EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +14, bottom: MediaQuery.of(context).viewInsets.bottom +4),
//                               child: Container(
//                                 height:  MediaQuery.of(context).size.height*0.0600,
//                                 width:  MediaQuery.of(context).size.width*0.0450,
//                                 child: Image.asset(
//                                   "assets/images/roulette.png",fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                             Text(" BUY", style: TextStyle(color: Colors.amber,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         showDialog(
//                             context: context,
//                             builder:
//                                 (BuildContext context )=>Setting()
//                         );
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height*0.0960,
//                         width: MediaQuery.of(context).size.width*0.0600,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage("assets/images/setting.png"),
//                                 fit: BoxFit.fill)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.12,
//               left: MediaQuery.of(context).size.width*0.26,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder:
//                           (BuildContext context )=>Guest_Profile()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.35,
//                   width:  MediaQuery.of(context).size.width*0.17,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/PlayPerson1.png"),
//                           fit: BoxFit.fill)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right +1, top:  MediaQuery.of(context).viewInsets.top +40),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.14,
//                           width:  MediaQuery.of(context).size.width*0.10,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "assets/images/person1.png",
//                                   ),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       Padding(
//                         padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top +6),
//                         child: Text(
//                           "1,173Cr",
//                           style: TextStyle(
//                               color: Colors.amber,
//                               fontSize: 15 * MediaQuery.textScaleFactorOf(context),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.23,
//               left: MediaQuery.of(context).size.width*0.26,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.0710,
//                 width:  MediaQuery.of(context).size.width*0.0450,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/roulette.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.12,
//               right: MediaQuery.of(context).size.width*0.20,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder:
//                           (BuildContext context ) =>Guest_Profile()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.35,
//                   width:  MediaQuery.of(context).size.width*0.17,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/PlayPerson1.png"),
//                           fit: BoxFit.fill)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 1, top: MediaQuery.of(context).viewInsets.top + 40),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.14,
//                           width:  MediaQuery.of(context).size.width*0.10,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "assets/images/person1.png",
//                                   ),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       Padding(
//                         padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 6),
//                         child: Text(
//                           "2.2Cr",
//                           style: TextStyle(
//                               color: Colors.amber,
//                               fontSize: 15* MediaQuery.textScaleFactorOf(context),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.23,
//               right: MediaQuery.of(context).size.width*0.33,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.0710,
//                 width:  MediaQuery.of(context).size.width*0.0450,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/roulette.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.22,
//               left: MediaQuery.of(context).size.width*0.0850,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder:
//                           (BuildContext context ) =>Guest_Profile()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.35,
//                   width:  MediaQuery.of(context).size.width*0.17,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/PlayPerson1.png"),
//                           fit: BoxFit.fill)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 1, top: MediaQuery.of(context).viewInsets.top + 40),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.14,
//                           width:  MediaQuery.of(context).size.width*0.10,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "assets/images/person1.png",
//                                   ),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       Padding(
//                         padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 6),
//                         child: Text(
//                           "5,86,647",
//                           style: TextStyle(
//                               color: Colors.amber,
//                               fontSize: 15* MediaQuery.textScaleFactorOf(context),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.33,
//               left: MediaQuery.of(context).size.width*0.0850,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.0710,
//                 width:  MediaQuery.of(context).size.width*0.0450,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/roulette.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.22,
//               right: MediaQuery.of(context).size.width*0.0400,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder:
//                           (BuildContext context ) =>Guest_Profile()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.35,
//                   width:  MediaQuery.of(context).size.width*0.17,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/PlayPerson1.png"),
//                           fit: BoxFit.fill)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.only(right:  MediaQuery.of(context).viewInsets.right + 1, top:  MediaQuery.of(context).viewInsets.top + 40),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.14,
//                           width:  MediaQuery.of(context).size.width*0.10,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "assets/images/person1.png",
//                                   ),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       Padding(
//                         padding:  EdgeInsets.only(top:  MediaQuery.of(context).viewInsets.top + 6),
//                         child: Text(
//                           "21.3L",
//                           style: TextStyle(
//                               color: Colors.amber,
//                               fontSize: 15* MediaQuery.textScaleFactorOf(context),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.33,
//               right: MediaQuery.of(context).size.width*0.17,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.0710,
//                 width:  MediaQuery.of(context).size.width*0.0450,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/roulette.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.29,
//               right: MediaQuery.of(context).size.width*0.47,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder:
//                           (BuildContext context ) =>Guest_Profile()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.35,
//                   width:  MediaQuery.of(context).size.width*0.17,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/PlayPerson1.png"),
//                           fit: BoxFit.fill)),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 1, top: MediaQuery.of(context).viewInsets.top + 40),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height*0.14,
//                           width:  MediaQuery.of(context).size.width*0.10,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                     "assets/images/person1.png",
//                                   ),
//                                   fit: BoxFit.fill)),
//                         ),
//                       ),
//                       Padding(
//                         padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 6),
//                         child: Text(
//                           "6,65,400",
//                           style: TextStyle(
//                               color: Colors.amber,
//                               fontSize: 15* MediaQuery.textScaleFactorOf(context),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.40,
//               left: MediaQuery.of(context).size.width*0.36,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.0700,
//                 width:  MediaQuery.of(context).size.width*0.0455,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/roulette.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//             Positioned(
//               bottom: MediaQuery.of(context).size.width*0.0,
//               left: MediaQuery.of(context).size.width*0.13,
//               child: Container(
//                 height: MediaQuery.of(context).size.height*0.14,
//                 width:  MediaQuery.of(context).size.width*0.99,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage("assets/images/playbottombar.png"),
//                       fit: BoxFit.fill),
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 7),
//                           child: Text(
//                             "Max Blind",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w300),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
//                           child: Text(
//                             "4",
//                             style: TextStyle(
//                                 color: Colors.amber,
//                                 fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 130, top: MediaQuery.of(context).viewInsets.top + 5),
//                           child: Text(
//                             "Boot Amount",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w300),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
//                           child: Text(
//                             "500",
//                             style: TextStyle(
//                                 color: Colors.amber,
//                                 fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 0),
//                           child: Text(
//                             "Max Chaal",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w300),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 14, top: MediaQuery.of(context).viewInsets.top + 0),
//                           child: Text(
//                             "1,28,000",
//                             style: TextStyle(
//                                 color: Colors.amber,
//                                 fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 72, top: MediaQuery.of(context).viewInsets.top + 0),
//                           child: Text(
//                             "Max Pot",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w300),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left +17, top:  MediaQuery.of(context).viewInsets.top +0),
//                           child: Text(
//                             "20,48,000",
//                             style: TextStyle(
//                                 color: Colors.amber,
//                                 fontSize: 17* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 42, bottom: MediaQuery.of(context).viewInsets.bottom + 8),
//                           child: Text(
//                             "Please wait for next game",
//                             style: TextStyle(
//                                 color: Colors.amber,
//                                 fontSize: 11* MediaQuery.textScaleFactorOf(context),
//                                 fontWeight: FontWeight.w500),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Positioned(
//             //   top: 311,
//             //   left: 25,
//             //   child: InkWell(
//             //     onTap: () {},
//             //     child: Container(
//             //       height: MediaQuery.of(context).size.height*0.11,
//             //       width:  MediaQuery.of(context).size.width*0.0600,
//             //       decoration: BoxDecoration(
//             //           image: DecorationImage(
//             //               image: AssetImage("assets/images/nocomment.png"),
//             //               fit: BoxFit.fill)),
//             //     ),
//             //   ),
//             // ),
//             Positioned(
//               top: MediaQuery.of(context).size.width*0.43,
//               left: MediaQuery.of(context).size.width*0.0400,
//               child: InkWell(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       builder: (BuildContext context)=>Comment()
//                   );
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.15,
//                   width:  MediaQuery.of(context).size.width*0.0900,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/comment.png"),
//                           fit: BoxFit.fill)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
