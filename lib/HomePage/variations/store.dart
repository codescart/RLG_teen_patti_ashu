import 'package:flutter/material.dart';
class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
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
                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 38.0,left: MediaQuery.of(context).viewInsets.left + 7),
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
                              Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 75.0),
                                    child: Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                  ),
                                  Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                    height:  MediaQuery.of(context).size.height*0.0600,
                                    width:  MediaQuery.of(context).size.width*0.0400,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text("     Buy for Rs.50",style: TextStyle(color: Color(0xff254200),fontSize: 18*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
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
            right: MediaQuery.of(context).size.width*0.78,
            top: MediaQuery.of(context).size.width*0.0600,
            child: Container(
              height:  MediaQuery.of(context).size.height*0.35,
              width:  MediaQuery.of(context).size.width*0.0600,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/storeside.png"),fit: BoxFit.fill)
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width*0.77,
            top: MediaQuery.of(context).size.width*0.24,
            child: Container(
              height:  MediaQuery.of(context).size.height*0.29,
              width:  MediaQuery.of(context).size.width*0.0700,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/storeside2.png"),fit: BoxFit.fill)
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width*0.78,
            top: MediaQuery.of(context).size.width*0.13,
            child: Container(
              height:  MediaQuery.of(context).size.height*0.0800,
              width:  MediaQuery.of(context).size.width*0.0600,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill)
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width*0.78,
            top: MediaQuery.of(context).size.width*0.29,
            child: Container(
              height:  MediaQuery.of(context).size.height*0.0900,
              width:  MediaQuery.of(context).size.width*0.0550,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill)
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width*0.37,
            left: MediaQuery.of(context).size.width*0.74,
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
}
