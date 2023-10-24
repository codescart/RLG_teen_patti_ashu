import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
class Tournament extends StatefulWidget {
  const Tournament({Key? key}) : super(key: key);

  @override
  State<Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<Tournament> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff5f0102),

        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));},
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.14,
                        width:  MediaQuery.of(context).size.width*0.080,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/back.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                    InkWell(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
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
                                      height:  MediaQuery.of(context).size.height*0.85,
                                      width:  MediaQuery.of(context).size.width*0.78,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage("assets/images/backtable.png",),fit: BoxFit.fill)
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height:  MediaQuery.of(context).size.height*0.124,
                                            width:  MediaQuery.of(context).size.width*0.16,
                                            child: Image.asset("assets/images/store.png",fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                            height:  MediaQuery.of(context).size.height*0.60,
                                            width:  MediaQuery.of(context).size.width*0.70,
                                            child: GridView.builder(
                                                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                                  maxCrossAxisExtent: 200,
                                                  mainAxisSpacing: 20,
                                                  crossAxisSpacing:20,
                                                  childAspectRatio: 5/4,
                                                ),
                                                itemCount: 9,
                                                itemBuilder: (BuildContext context, int index){
                                                  return  Container(
                                                    height:  MediaQuery.of(context).size.height*0.0400,
                                                    width:  MediaQuery.of(context).size.width*0.0600,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image:AssetImage("assets/images/buybutton.png"),fit: BoxFit.fill)
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 37.0,left: 7),
                                                              child: Image.asset("assets/images/roulette.png",fit: BoxFit.fill,
                                                                height:  MediaQuery.of(context).size.height*0.0700,
                                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(top: 37.0,left: 5),
                                                              child: Text("2,40,00,000",style: TextStyle(color: Colors.white,fontSize: 16),),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 75.0),
                                                              child: Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                                            ),
                                                            Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                              height:  MediaQuery.of(context).size.height*0.0600,
                                                              width:  MediaQuery.of(context).size.width*0.0400,)
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("    Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18,fontWeight: FontWeight.bold),)
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right:552.0,
                                      top: 46.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.35,
                                        width:  MediaQuery.of(context).size.width*0.0600,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/storeside.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:547.0,
                                      top: 162.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.29,
                                        width:  MediaQuery.of(context).size.width*0.0615,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/storeside2.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:553.0,
                                      top: 90.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.0800,
                                        width:  MediaQuery.of(context).size.width*0.0500,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right:555.0,
                                      top: 200.0,
                                      child: Container(
                                        height:  MediaQuery.of(context).size.height*0.0800,
                                        width:  MediaQuery.of(context).size.width*0.0500,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 265.0,
                                      left: 530.0,
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
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.13,
                        width:  MediaQuery.of(context).size.width*0.185,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/tourbutton.png"),
                                fit: BoxFit.fill)),
                        child: Center(child: Text("14.3L",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.10,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.25,
                      width:  MediaQuery.of(context).size.width*0.245,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/tournamenttext.png"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.11,),
                    InkWell(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
                              return Dialog(
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.8,
                                  width:  MediaQuery.of(context).size.width*0.7,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/questable.png"),
                                          fit: BoxFit.fill)),
                                  child: Column(
                                    children: [
                                      SizedBox(height: MediaQuery.of(context).size.height*0.015),
                                      Text("Rules",style: TextStyle(color: Color(0xff640700),fontSize: 26,fontWeight: FontWeight.bold),),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.10),
                                      Text("*  Every player start with same chips.",style: TextStyle(color: Color(0xffffb217),fontSize: 17),),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0150),
                                      Text("   *  Final chip balance determines ranks.",style: TextStyle(color: Color(0xffffb217),fontSize: 17),),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.0150),
                                      Text("             *  Boot amount increases as the tournament\n                 progresses!",style: TextStyle(color: Color(0xffffb217),fontSize: 17),),
                                      SizedBox(height: MediaQuery.of(context).size.height*0.10),
                                      InkWell(
                                        onTap: (){Navigator.pop(context);},
                                          child: Image.asset("assets/images/okaybutton.png",height: 75,width: 120,))




                                    ],
                                  ),
                                ),
                              );
                            }
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.12,
                        width:  MediaQuery.of(context).size.width*0.070,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/quesmark.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                    InkWell(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder:
                                (BuildContext context ) {
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
                                      height: MediaQuery.of(context).size.height*0.9,
                                      width:  MediaQuery.of(context).size.width*0.9,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/questable.png"),
                                              fit: BoxFit.fill)),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.13,
                                            width:  MediaQuery.of(context).size.width*0.48,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage("assets/images/tourhistory.png",),fit: BoxFit.fill)
                                            ),
                                          )

                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              );
                            }
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.32,
                        width:  MediaQuery.of(context).size.width*0.180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/bottom1.png"),
                                fit: BoxFit.fill)),
                        child: Center(child: Text("HISTORY",style: TextStyle(color: Color(0xfff5b506),fontWeight: FontWeight.bold,fontSize: 16),)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text("More Tournaments Coming Soon!",style: TextStyle(color: Colors.orange,fontSize: 19,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

