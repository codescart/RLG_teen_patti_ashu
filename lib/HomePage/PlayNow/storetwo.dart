import 'package:flutter/material.dart';

class storetwo extends StatefulWidget {
  const storetwo({Key? key}) : super(key: key);

  @override
  State<storetwo> createState() => _storetwoState();
}

class _storetwoState extends State<storetwo> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        height:  MediaQuery.of(context).size.height*0.85,
        width:  MediaQuery.of(context).size.width*0.78,
        decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage("assets/images/backtable.png",),fit: BoxFit.fill)
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.12,
            ),
            Container(
              height:  MediaQuery.of(context).size.height*0.60,
              width:  MediaQuery.of(context).size.width*0.78,
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                        height: 50.0,
                        child: TabBar(
                          //unselectedLabelColor: Colors.deepOrangeAccent,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.zero,
                              color: Colors.transparent
                          ),
                          tabs: [
                            Tab(
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Coin',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)

                                    ,selectionColor: Colors.white,),
                                  Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child:   Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Hammer',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)
                                    ,selectionColor: Colors.white,),
                                  Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ],
                        )
                    ),
                    Container(
                      height:  MediaQuery.of(context).size.height*0.45,
                      child: TabBarView(
                        children: [
                          Container(
                            height:  MediaQuery.of(context).size.height*0.40,
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
                                              padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 38.0,left: MediaQuery.of(context).viewInsets.left + 20),
                                              child: Image.asset("assets/images/roulette.png",fit: BoxFit.fill,
                                                height:  MediaQuery.of(context).size.height*0.0700,
                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 37.0,left: MediaQuery.of(context).viewInsets.left + 5),
                                              child: Text("2,40,00,000",style: TextStyle(color: Colors.white,fontSize: 16),),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 75.0),
                                          child: Row(
                                            children: [
                                              Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                height:  MediaQuery.of(context).size.height*0.0600,
                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                              Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                                        Text("     Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ),
                          Container(
                            height:  MediaQuery.of(context).size.height*0.40,
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
                                              padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 38.0,left: MediaQuery.of(context).viewInsets.left + 20),
                                              child: Image.asset("assets/images/hammer.png",fit: BoxFit.fill,
                                                height:  MediaQuery.of(context).size.height*0.0700,
                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 37.0,left: MediaQuery.of(context).viewInsets.left + 5),
                                              child: Text("2,40,00,000",style: TextStyle(color: Colors.white,fontSize: 16),),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 75.0),
                                          child: Row(
                                            children: [
                                              Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                height:  MediaQuery.of(context).size.height*0.0600,
                                                width:  MediaQuery.of(context).size.width*0.0400,),
                                              Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                                        Text("     Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        ),

      ),
    );
  }
}
