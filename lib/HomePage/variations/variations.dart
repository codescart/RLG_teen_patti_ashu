// import 'package:flutter/material.dart';
// import 'package:ultimate_teen_patti/HomePage/variations/variationtable.dart';
//
// class Variations extends StatefulWidget {
//   const Variations({Key? key}) : super(key: key);
//
//   @override
//   State<Variations> createState() => _VariationsState();
// }
//
// class _VariationsState extends State<Variations> {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.51,
//             width: MediaQuery.of(context).size.width * 0.60,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/backtable.png"),
//                     fit: BoxFit.fill)),
//             child: Column(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.0670,
//                   width: MediaQuery.of(context).size.width * 0.28,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/selecttabletxt.png"),
//                           fit: BoxFit.fill)),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.11,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Variation_table()));},
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.19,
//                         width: MediaQuery.of(context).size.width * 0.14,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/variationbutton.png"),
//                                 fit: BoxFit.fill)),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.0750,
//                               width: MediaQuery.of(context).size.width * 0.0850,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/fixedtxt.png"),
//                                       fit: BoxFit.fill)),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.0650,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.0450,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               "assets/images/roulette.png"),
//                                           fit: BoxFit.fill)),
//                                 ),
//                                 Text(
//                                   "500",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17 *
//                                           MediaQuery.textScaleFactorOf(context),
//                                       fontWeight: FontWeight.bold),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Variation_table()));},
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.19,
//                         width: MediaQuery.of(context).size.width * 0.14,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/variationbutton.png"),
//                                 fit: BoxFit.fill)),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.0550,
//                               width: MediaQuery.of(context).size.width * 0.0990,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/nolimittxt.png"),
//                                       fit: BoxFit.fill)),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.0650,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.0450,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               "assets/images/roulette.png"),
//                                           fit: BoxFit.fill)),
//                                 ),
//                                 Text(
//                                   "5.0L",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17 *
//                                           MediaQuery.textScaleFactorOf(context),
//                                       fontWeight: FontWeight.bold),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Variation_table()));},
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.19,
//                         width: MediaQuery.of(context).size.width * 0.14,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/variationbutton.png"),
//                                 fit: BoxFit.fill)),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.0550,
//                               width: MediaQuery.of(context).size.width * 0.0990,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/nolimittxt.png"),
//                                       fit: BoxFit.fill)),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.0650,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.0450,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               "assets/images/roulette.png"),
//                                           fit: BoxFit.fill)),
//                                 ),
//                                 Text(
//                                   "25.0L",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17 *
//                                           MediaQuery.textScaleFactorOf(context),
//                                       fontWeight: FontWeight.bold),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Variation_table()));},
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.19,
//                         width: MediaQuery.of(context).size.width * 0.14,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/variationbutton.png"),
//                                 fit: BoxFit.fill)),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.0550,
//                               width: MediaQuery.of(context).size.width * 0.0990,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/nolimittxt.png"),
//                                       fit: BoxFit.fill)),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.0650,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.0450,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage(
//                                               "assets/images/roulette.png"),
//                                           fit: BoxFit.fill)),
//                                 ),
//                                 Text(
//                                   "1.0Cr",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17 *
//                                           MediaQuery.textScaleFactorOf(context),
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: MediaQuery.of(context).size.width * 0.23,
//             left: MediaQuery.of(context).size.width * 0.57,
//             child: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.0950,
//                 width: MediaQuery.of(context).size.width * 0.0600,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/cross.png"),
//                         fit: BoxFit.fill)),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
