import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/playnow.dart';
class Private_table extends StatefulWidget {
  const Private_table({Key? key}) : super(key: key);

  @override
  State<Private_table> createState() => _Private_tableState();
}

class _Private_tableState extends State<Private_table> {
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
            height: MediaQuery.of(context).size.height*0.90,
            width: MediaQuery.of(context).size.width*0.850,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/questable.png"),fit: BoxFit.fill)
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.12,
                  width: MediaQuery.of(context).size.width*0.40,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/playtabletxt.png"),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                Text("Enter Code",style: TextStyle(color: Color(0xffe4c41c),fontSize: 17*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("   Join Table",style: TextStyle(color: Color(0xffee7414),fontSize: 20*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      width: MediaQuery.of(context).size.width*0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/infocardbutton.png"),fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.10,
                      width: MediaQuery.of(context).size.width*0.14,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/enterbutton.png"),fit: BoxFit.fill)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 26.0),
                    child: InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Play_Now()));},
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.16,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/bottom1.png",),fit: BoxFit.cover)
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0100,
                          width: MediaQuery.of(context).size.width*0.050,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/previoustabletxt.png"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("OR",style: TextStyle(color: Color(0xffe4c41c),fontSize: 17*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text("          Create a Table",style: TextStyle(color: Color(0xffee7414),fontSize: 20*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0600,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("   Select Boot",style: TextStyle(color: Color(0xffd20308),fontSize: 20*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                    Container(
                      height: MediaQuery.of(context).size.height*0.0850,
                      width: MediaQuery.of(context).size.width*0.25,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/bootbutton.png"),fit: BoxFit.fill)
                      ),
                    ),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Play_Now()));},
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.10,
                        width: MediaQuery.of(context).size.width*0.14,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/okaybutton.png"),fit: BoxFit.fill)
                        ),
                      ),
                    ),

                  ],
                )

              ],

            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width*0.33,
            left: MediaQuery.of(context).size.width*0.52,
            child: InkWell(onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.0940,
                width: MediaQuery.of(context).size.width*0.0550,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/plusboot.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width*0.33,
            left: MediaQuery.of(context).size.width*0.30,
            child: InkWell(onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.10,
                width: MediaQuery.of(context).size.width*0.0630,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/minusboot.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width*0.29,
            left: MediaQuery.of(context).size.width*0.35,
            child: InkWell(onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.0950,
                width: MediaQuery.of(context).size.width*0.10,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/bootscroll.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width*0.37,
            left: MediaQuery.of(context).size.width*0.82,
            child: InkWell(onTap: (){Navigator.pop(context);},
              child: Container(
                height: MediaQuery.of(context).size.height*0.0950,
                width: MediaQuery.of(context).size.width*0.0600,
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
